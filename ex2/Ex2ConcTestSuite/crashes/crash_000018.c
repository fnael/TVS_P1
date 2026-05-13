/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[29];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=436207621 */
    int *k0 = malloc(sizeof(int)); *k0 = 436207621;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get_first_key key=1140916212 */
    treetable_get_first_key(table, &out);

    /* get_greater_than key=1094795585 */
    search_key = 1094795585;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-1996471999 */
    search_key = -1996471999;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=16384 */
    int *k25 = malloc(sizeof(int)); *k25 = 16384;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* add key=1094778882 */
    int *k30 = malloc(sizeof(int)); *k30 = 1094778882;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-200736753 */
    search_key = -200736753;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=167837696 */
    int *k45 = malloc(sizeof(int)); *k45 = 167837696;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);

    /* add key=167837696 */
    int *k50 = malloc(sizeof(int)); *k50 = 167837696;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);

    /* add key=16777216 */
    int *k55 = malloc(sizeof(int)); *k55 = 16777216;
    alloc_keys[alloc_count++] = k55;
    treetable_add(table, k55, k55);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1094795585 */
    int *k65 = malloc(sizeof(int)); *k65 = 1094795585;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);

    /* get key=440484161 */
    search_key = 440484161;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=1140850688 */
    treetable_get_first_key(table, &out);

    /* get_first_key key=35072 */
    treetable_get_first_key(table, &out);

    /* add key=5570560 */
    int *k85 = malloc(sizeof(int)); *k85 = 5570560;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);

    /* add key=1094795520 */
    int *k90 = malloc(sizeof(int)); *k90 = 1094795520;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);

    /* get key=999745 */
    search_key = 999745;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=8978676 */
    search_key = 8978676;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=33554432 */
    int *k105 = malloc(sizeof(int)); *k105 = 33554432;
    alloc_keys[alloc_count++] = k105;
    treetable_add(table, k105, k105);

    /* add key=1094795585 */
    int *k110 = malloc(sizeof(int)); *k110 = 1094795585;
    alloc_keys[alloc_count++] = k110;
    treetable_add(table, k110, k110);

    /* get key=255934785 */
    search_key = 255934785;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=62473 */
    int *k120 = malloc(sizeof(int)); *k120 = 62473;
    alloc_keys[alloc_count++] = k120;
    treetable_add(table, k120, k120);

    /* add key=2586 */
    int *k125 = malloc(sizeof(int)); *k125 = 2586;
    alloc_keys[alloc_count++] = k125;
    treetable_add(table, k125, k125);

    /* add key=-1996486076 */
    int *k130 = malloc(sizeof(int)); *k130 = -1996486076;
    alloc_keys[alloc_count++] = k130;
    treetable_add(table, k130, k130);

    /* add key=0 */
    int *k135 = malloc(sizeof(int)); *k135 = 0;
    alloc_keys[alloc_count++] = k135;
    treetable_add(table, k135, k135);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
