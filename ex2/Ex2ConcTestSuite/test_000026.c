/* Property: Validity preservation: balanced and sorted invariants hold after inserts */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[4];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=2560 */
    int *k0 = malloc(sizeof(int)); *k0 = 2560;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);
    assert(balanced(table) && sorted(table));

    /* add key=657921 */
    int *k5 = malloc(sizeof(int)); *k5 = 657921;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);
    assert(balanced(table) && sorted(table));

    /* add key=657408 */
    int *k10 = malloc(sizeof(int)); *k10 = 657408;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);
    assert(balanced(table) && sorted(table));

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
