import os
import struct
import sys

#   python3 generate_tests.py minimized Ex2ConcTestSuite                           -> normal tests
#   python3 generate_tests.py outputs/default/crashes Ex2ConcTestSuite/crashes     -> crash tests

input_dir = sys.argv[1] if len(sys.argv) > 1 else "minimized"
output_dir = sys.argv[2] if len(sys.argv) > 2 else "Ex2ConcTestSuite"

is_crash = "crash" in input_dir.lower()

os.makedirs(output_dir, exist_ok=True)

ops = {0: "add", 1: "get", 2: "get_first_key", 3: "get_greater_than"}

# Include paths relative to output_dir
if is_crash:
    treetable_inc = "../../treetable.h"
else:
    treetable_inc = "../treetable.h"


def classify(data, is_crash):
    ops_used = set(data[i] % 4 for i in range(0, len(data) - 4, 5))
    has_add = 0 in ops_used
    has_get = 1 in ops_used
    has_first = 2 in ops_used
    has_greater = 3 in ops_used

    if is_crash:
        if not has_add and has_first:
            return (
                "CRASH: treetable_get_first_key on empty table causes SEGV inside "
                "tree_min because sentinel->left is NULL (never initialised)."
            )
        if not has_add and has_greater:
            return (
                "CRASH: treetable_get_greater_than on empty table causes SEGV inside "
                "tree_min because sentinel->left is NULL (never initialised)."
            )
        if has_greater:
            return (
                "CRASH: treetable_get_greater_than returns a key that is not strictly "
                "greater than the search key, violating the API contract (SIGABRT)."
            )
        return "CRASH: assertion violation or memory safety bug detected by ASAN."

    if not has_add:
        return "Empty table handling: read operations on empty tree must not crash"
    if has_add and has_get and not has_first and not has_greater:
        return "Lookup correctness: inserted keys must be retrievable"
    if has_first:
        return "get_first_key correctness: must return minimum key"
    if has_greater:
        return (
            "Successor monotonicity: get_greater_than must return strictly greater key"
        )
    return "Validity preservation: balanced and sorted invariants hold after inserts"


def generate_op(op, key, is_crash, i):
    code = f"\n    /* {ops[op]} key={key} */\n"

    if op == 0:
        code += f"    int *k{i} = malloc(sizeof(int)); *k{i} = {key};\n"
        code += f"    alloc_keys[alloc_count++] = k{i};\n"
        code += f"    treetable_add(table, k{i}, k{i});\n"
        if not is_crash:
            code += f"    assert(balanced(table) && sorted(table));\n"
    elif op == 1:
        code += f"    search_key = {key};\n"
        code += f"    if (treetable_get(table, &search_key, &out) == CC_OK)\n"
        code += f"        assert(out != NULL);\n"
    elif op == 2:
        if is_crash:
            code += f"    treetable_get_first_key(table, &out);\n"
        else:
            code += f"    if (treetable_size(table) > 0)\n"
            code += f"        assert(treetable_get_first_key(table, &out) == CC_OK);\n"
    elif op == 3:
        code += f"    search_key = {key};\n"
        if is_crash:
            code += f"    treetable_get_greater_than(table, &search_key, &out);\n"
        else:
            code += f"    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)\n"
            code += f"        assert(out != NULL);\n"

    return code


for filename in sorted(os.listdir(input_dir)):
    filepath = os.path.join(input_dir, filename)
    if not os.path.isfile(filepath):
        continue

    with open(filepath, "rb") as f:
        data = f.read()

    max_keys = len(data) // 5 + 1
    prop = classify(data, is_crash)

    c_code = f"""/* Property: {prop} */
#include <assert.h>
#include <stdlib.h>
#include "{treetable_inc}"

int main(void)
{{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[{max_keys}];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;
"""

    for i in range(0, len(data) - 4, 5):
        chunk = data[i : i + 5]
        if len(chunk) < 5:
            break
        op = chunk[0] % 4
        key = struct.unpack("<i", chunk[1:5])[0]
        c_code += generate_op(op, key, is_crash, i)

    c_code += """
    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
"""

    prefix = "crash_" if is_crash else "test_"
    safe_name = filename.split(",")[0].replace("id:", prefix)
    out_path = os.path.join(output_dir, f"{safe_name}.c")
    with open(out_path, "w") as out_f:
        out_f.write(c_code)
    print(f"  wrote {out_path}")

print(f"\nDone — generated tests in {output_dir}/")
