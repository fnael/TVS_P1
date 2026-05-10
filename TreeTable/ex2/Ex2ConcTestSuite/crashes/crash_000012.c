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

    /* add key=10 */
    int *k0 = malloc(sizeof(int)); *k0 = 10;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get key=10 */
    search_key = 10;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k10 = malloc(sizeof(int)); *k10 = 0;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=0 */
    int *k15 = malloc(sizeof(int)); *k15 = 0;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* add key=0 */
    int *k20 = malloc(sizeof(int)); *k20 = 0;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* add key=0 */
    int *k25 = malloc(sizeof(int)); *k25 = 0;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* add key=9 */
    int *k30 = malloc(sizeof(int)); *k30 = 9;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);

    /* get_greater_than key=10 */
    search_key = 10;
    treetable_get_greater_than(table, &search_key, &out);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
