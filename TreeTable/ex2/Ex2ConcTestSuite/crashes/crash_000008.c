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

    /* add key=2560 */
    int *k0 = malloc(sizeof(int)); *k0 = 2560;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* add key=587205121 */
    int *k5 = malloc(sizeof(int)); *k5 = 587205121;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);

    /* add key=655616 */
    int *k10 = malloc(sizeof(int)); *k10 = 655616;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=167772169 */
    int *k15 = malloc(sizeof(int)); *k15 = 167772169;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* add key=167837696 */
    int *k20 = malloc(sizeof(int)); *k20 = 167837696;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* add key=16777251 */
    int *k25 = malloc(sizeof(int)); *k25 = 16777251;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* add key=10 */
    int *k30 = malloc(sizeof(int)); *k30 = 10;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);

    /* get_greater_than key=10 */
    search_key = 10;
    treetable_get_greater_than(table, &search_key, &out);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
