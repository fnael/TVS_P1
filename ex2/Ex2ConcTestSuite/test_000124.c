/* Property: get_first_key correctness: must return minimum key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[28];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* get key=-252645121 */
    search_key = -252645121;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1094840560 */
    int *k5 = malloc(sizeof(int)); *k5 = 1094840560;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);
    assert(balanced(table) && sorted(table));

    /* get key=65 */
    search_key = 65;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=83886080 */
    int *k15 = malloc(sizeof(int)); *k15 = 83886080;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);
    assert(balanced(table) && sorted(table));

    /* add key=167782684 */
    int *k20 = malloc(sizeof(int)); *k20 = 167782684;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);
    assert(balanced(table) && sorted(table));

    /* add key=655871 */
    int *k25 = malloc(sizeof(int)); *k25 = 655871;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);
    assert(balanced(table) && sorted(table));

    /* add key=1094781440 */
    int *k30 = malloc(sizeof(int)); *k30 = 1094781440;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=147777 */
    search_key = 147777;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=66304 */
    int *k45 = malloc(sizeof(int)); *k45 = 66304;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);
    assert(balanced(table) && sorted(table));

    /* get key=10 */
    search_key = 10;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=65537 */
    search_key = 65537;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=10 */
    int *k60 = malloc(sizeof(int)); *k60 = 10;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);
    assert(balanced(table) && sorted(table));

    /* add key=66304 */
    int *k65 = malloc(sizeof(int)); *k65 = 66304;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);
    assert(balanced(table) && sorted(table));

    /* get key=655360 */
    search_key = 655360;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k75 = malloc(sizeof(int)); *k75 = 0;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);
    assert(balanced(table) && sorted(table));

    /* add key=720896 */
    int *k80 = malloc(sizeof(int)); *k80 = 720896;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k85 = malloc(sizeof(int)); *k85 = 0;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k90 = malloc(sizeof(int)); *k90 = 0;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);
    assert(balanced(table) && sorted(table));

    /* add key=184549376 */
    int *k95 = malloc(sizeof(int)); *k95 = 184549376;
    alloc_keys[alloc_count++] = k95;
    treetable_add(table, k95, k95);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k100 = malloc(sizeof(int)); *k100 = 0;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k105 = malloc(sizeof(int)); *k105 = 0;
    alloc_keys[alloc_count++] = k105;
    treetable_add(table, k105, k105);
    assert(balanced(table) && sorted(table));

    /* add key=469763328 */
    int *k110 = malloc(sizeof(int)); *k110 = 469763328;
    alloc_keys[alloc_count++] = k110;
    treetable_add(table, k110, k110);
    assert(balanced(table) && sorted(table));

    /* get key=-16774656 */
    search_key = -16774656;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=10 */
    search_key = 10;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=167837696 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=1835008 */
    int *k130 = malloc(sizeof(int)); *k130 = 1835008;
    alloc_keys[alloc_count++] = k130;
    treetable_add(table, k130, k130);
    assert(balanced(table) && sorted(table));

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
