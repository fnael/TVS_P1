/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[11];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=10 */
    int *k0 = malloc(sizeof(int)); *k0 = 10;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get key=2293770 */
    search_key = 2293770;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=503319041 */
    int *k10 = malloc(sizeof(int)); *k10 = 503319041;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=183173120 */
    int *k15 = malloc(sizeof(int)); *k15 = 183173120;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* add key=168886272 */
    int *k20 = malloc(sizeof(int)); *k20 = 168886272;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* add key=10 */
    int *k25 = malloc(sizeof(int)); *k25 = 10;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* get key=-247 */
    search_key = -247;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=150994944 */
    search_key = 150994944;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=2560 */
    int *k40 = malloc(sizeof(int)); *k40 = 2560;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);

    /* add key=2561 */
    int *k45 = malloc(sizeof(int)); *k45 = 2561;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
