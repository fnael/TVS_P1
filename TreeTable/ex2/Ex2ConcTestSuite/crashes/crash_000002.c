/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[9];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=926365495 */
    int *k0 = malloc(sizeof(int)); *k0 = 926365495;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get_greater_than key=926365495 */
    search_key = 926365495;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=926365495 */
    search_key = 926365495;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=926365495 */
    search_key = 926365495;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=2130709047 */
    search_key = 2130709047;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=926365495 */
    search_key = 926365495;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=2615 */
    search_key = 2615;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=2592 */
    int *k35 = malloc(sizeof(int)); *k35 = 2592;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
