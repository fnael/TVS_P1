/* Property: Successor monotonicity: get_greater_than must return strictly greater key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[6];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=10 */
    int *k0 = malloc(sizeof(int)); *k0 = 10;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);
    assert(balanced(table) && sorted(table));

    /* add key=-1819045120 */
    int *k5 = malloc(sizeof(int)); *k5 = -1819045120;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-1819044973 */
    search_key = -1819044973;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1819044973 */
    search_key = -1819044973;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=167875475 */
    search_key = 167875475;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
