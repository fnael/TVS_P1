/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[8];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=1090519050 */
    int *k0 = malloc(sizeof(int)); *k0 = 1090519050;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1094795585 */
    int *k10 = malloc(sizeof(int)); *k10 = 1094795585;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* get key=1094795329 */
    search_key = 1094795329;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=1094795585 */
    search_key = 1094795585;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=4276545 */
    search_key = 4276545;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=10 */
    search_key = 10;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
