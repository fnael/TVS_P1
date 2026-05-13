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

    /* add key=13369362 */
    int *k0 = malloc(sizeof(int)); *k0 = 13369362;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* add key=0 */
    int *k5 = malloc(sizeof(int)); *k5 = 0;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);

    /* add key=655616 */
    int *k10 = malloc(sizeof(int)); *k10 = 655616;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=2560 */
    int *k15 = malloc(sizeof(int)); *k15 = 2560;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* add key=10 */
    int *k20 = malloc(sizeof(int)); *k20 = 10;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=168902977 */
    search_key = 168902977;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-858993664 */
    int *k50 = malloc(sizeof(int)); *k50 = -858993664;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
