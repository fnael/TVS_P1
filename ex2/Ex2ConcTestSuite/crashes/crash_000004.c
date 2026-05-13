/* Property: CRASH: assertion violation or memory safety bug detected by ASAN. */
#include <assert.h>
#include <stdlib.h>
#include "../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[12];
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

    /* add key=2560 */
    int *k10 = malloc(sizeof(int)); *k10 = 2560;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=2561 */
    int *k15 = malloc(sizeof(int)); *k15 = 2561;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* add key=655360 */
    int *k20 = malloc(sizeof(int)); *k20 = 655360;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* add key=655616 */
    int *k25 = malloc(sizeof(int)); *k25 = 655616;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* add key=1094781441 */
    int *k30 = malloc(sizeof(int)); *k30 = 1094781441;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);

    /* get key=65 */
    search_key = 65;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=16777226 */
    search_key = 16777226;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=1094795585 */
    treetable_get_first_key(table, &out);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
