/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[18];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=327935 */
    int *k0 = malloc(sizeof(int)); *k0 = 327935;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get key=33554437 */
    search_key = 33554437;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=33554432 */
    int *k10 = malloc(sizeof(int)); *k10 = 33554432;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=99286528 */
    int *k15 = malloc(sizeof(int)); *k15 = 99286528;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* add key=131072 */
    int *k20 = malloc(sizeof(int)); *k20 = 131072;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* add key=131072 */
    int *k25 = malloc(sizeof(int)); *k25 = 131072;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* add key=177 */
    int *k30 = malloc(sizeof(int)); *k30 = 177;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);

    /* get_first_key key=2142306304 */
    treetable_get_first_key(table, &out);

    /* get_greater_than key=327685 */
    search_key = 327685;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=33554432 */
    search_key = 33554432;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=83887584 */
    search_key = 83887584;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=-150994689 */
    int *k55 = malloc(sizeof(int)); *k55 = -150994689;
    alloc_keys[alloc_count++] = k55;
    treetable_add(table, k55, k55);

    /* get_greater_than key=1090519552 */
    search_key = 1090519552;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=150998849 */
    search_key = 150998849;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=436207616 */
    int *k75 = malloc(sizeof(int)); *k75 = 436207616;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);

    /* get_first_key key=1140850688 */
    treetable_get_first_key(table, &out);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
