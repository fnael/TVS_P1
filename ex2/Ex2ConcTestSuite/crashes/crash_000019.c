/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[32];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=436207621 */
    int *k0 = malloc(sizeof(int)); *k0 = 436207621;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get_greater_than key=1140853248 */
    search_key = 1140853248;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=35072 */
    search_key = 35072;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=33554432 */
    int *k15 = malloc(sizeof(int)); *k15 = 33554432;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* add key=1094730049 */
    int *k20 = malloc(sizeof(int)); *k20 = 1094730049;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* get key=255934785 */
    search_key = 255934785;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=62473 */
    int *k30 = malloc(sizeof(int)); *k30 = 62473;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);

    /* add key=2561 */
    int *k35 = malloc(sizeof(int)); *k35 = 2561;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);

    /* add key=2561 */
    int *k40 = malloc(sizeof(int)); *k40 = 2561;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);

    /* add key=1094779136 */
    int *k45 = malloc(sizeof(int)); *k45 = 1094779136;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=662081 */
    search_key = 662081;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=672768 */
    int *k65 = malloc(sizeof(int)); *k65 = 672768;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);

    /* get key=0 */
    search_key = 0;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=8388681 */
    int *k75 = malloc(sizeof(int)); *k75 = 8388681;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-200736753 */
    search_key = -200736753;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=137 */
    int *k90 = malloc(sizeof(int)); *k90 = 137;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);

    /* add key=1090519552 */
    int *k95 = malloc(sizeof(int)); *k95 = 1090519552;
    alloc_keys[alloc_count++] = k95;
    treetable_add(table, k95, k95);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=150998849 */
    search_key = 150998849;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=167837696 */
    int *k110 = malloc(sizeof(int)); *k110 = 167837696;
    alloc_keys[alloc_count++] = k110;
    treetable_add(table, k110, k110);

    /* add key=167837696 */
    int *k115 = malloc(sizeof(int)); *k115 = 167837696;
    alloc_keys[alloc_count++] = k115;
    treetable_add(table, k115, k115);

    /* add key=16777216 */
    int *k120 = malloc(sizeof(int)); *k120 = 16777216;
    alloc_keys[alloc_count++] = k120;
    treetable_add(table, k120, k120);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=62529 */
    search_key = 62529;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=2586 */
    int *k140 = malloc(sizeof(int)); *k140 = 2586;
    alloc_keys[alloc_count++] = k140;
    treetable_add(table, k140, k140);

    /* add key=-1996486076 */
    int *k145 = malloc(sizeof(int)); *k145 = -1996486076;
    alloc_keys[alloc_count++] = k145;
    treetable_add(table, k145, k145);

    /* add key=0 */
    int *k150 = malloc(sizeof(int)); *k150 = 0;
    alloc_keys[alloc_count++] = k150;
    treetable_add(table, k150, k150);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
