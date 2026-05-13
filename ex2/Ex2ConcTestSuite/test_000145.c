/* Property: get_first_key correctness: must return minimum key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[31];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=436207621 */
    int *k0 = malloc(sizeof(int)); *k0 = 436207621;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=1140850688 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_greater_than key=35072 */
    search_key = 35072;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=33554432 */
    int *k15 = malloc(sizeof(int)); *k15 = 33554432;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);
    assert(balanced(table) && sorted(table));

    /* add key=1094795585 */
    int *k20 = malloc(sizeof(int)); *k20 = 1094795585;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);
    assert(balanced(table) && sorted(table));

    /* get key=255934785 */
    search_key = 255934785;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=62473 */
    int *k30 = malloc(sizeof(int)); *k30 = 62473;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);
    assert(balanced(table) && sorted(table));

    /* add key=2561 */
    int *k35 = malloc(sizeof(int)); *k35 = 2561;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);
    assert(balanced(table) && sorted(table));

    /* add key=2561 */
    int *k40 = malloc(sizeof(int)); *k40 = 2561;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);
    assert(balanced(table) && sorted(table));

    /* add key=1094779136 */
    int *k45 = malloc(sizeof(int)); *k45 = 1094779136;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);
    assert(balanced(table) && sorted(table));

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

    /* add key=0 */
    int *k65 = malloc(sizeof(int)); *k65 = 0;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);
    assert(balanced(table) && sorted(table));

    /* add key=172228608 */
    int *k70 = malloc(sizeof(int)); *k70 = 172228608;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);
    assert(balanced(table) && sorted(table));

    /* add key=137 */
    int *k75 = malloc(sizeof(int)); *k75 = 137;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);
    assert(balanced(table) && sorted(table));

    /* add key=-2147463424 */
    int *k80 = malloc(sizeof(int)); *k80 = -2147463424;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);
    assert(balanced(table) && sorted(table));

    /* add key=1094795585 */
    int *k85 = malloc(sizeof(int)); *k85 = 1094795585;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);
    assert(balanced(table) && sorted(table));

    /* get key=999745 */
    search_key = 999745;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=8978676 */
    search_key = 8978676;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=131072 */
    int *k100 = malloc(sizeof(int)); *k100 = 131072;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);
    assert(balanced(table) && sorted(table));

    /* get key=167788865 */
    search_key = 167788865;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=16777216 */
    int *k110 = malloc(sizeof(int)); *k110 = 16777216;
    alloc_keys[alloc_count++] = k110;
    treetable_add(table, k110, k110);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=9671571 */
    search_key = 9671571;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-1819044973 */
    int *k120 = malloc(sizeof(int)); *k120 = -1819044973;
    alloc_keys[alloc_count++] = k120;
    treetable_add(table, k120, k120);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=1094795667 */
    search_key = 1094795667;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=150998849 */
    search_key = 150998849;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=436207616 */
    int *k135 = malloc(sizeof(int)); *k135 = 436207616;
    alloc_keys[alloc_count++] = k135;
    treetable_add(table, k135, k135);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=1140850688 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_first_key key=35072 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
