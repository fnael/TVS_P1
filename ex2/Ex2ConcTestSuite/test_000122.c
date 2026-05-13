/* Property: get_first_key correctness: must return minimum key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[30];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k5 = malloc(sizeof(int)); *k5 = 0;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);
    assert(balanced(table) && sorted(table));

    /* add key=469763328 */
    int *k10 = malloc(sizeof(int)); *k10 = 469763328;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);
    assert(balanced(table) && sorted(table));

    /* get key=-16774656 */
    search_key = -16774656;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=10 */
    search_key = 10;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=1094795585 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=875836468 */
    int *k30 = malloc(sizeof(int)); *k30 = 875836468;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);
    assert(balanced(table) && sorted(table));

    /* add key=875836468 */
    int *k35 = malloc(sizeof(int)); *k35 = 875836468;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);
    assert(balanced(table) && sorted(table));

    /* add key=1093940276 */
    int *k40 = malloc(sizeof(int)); *k40 = 1093940276;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=50331648 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=655616 */
    search_key = 655616;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=66304 */
    int *k60 = malloc(sizeof(int)); *k60 = 66304;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);
    assert(balanced(table) && sorted(table));

    /* get key=655360 */
    search_key = 655360;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=50331648 */
    int *k70 = malloc(sizeof(int)); *k70 = 50331648;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);
    assert(balanced(table) && sorted(table));

    /* get key=256 */
    search_key = 256;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=0 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=0 */
    int *k85 = malloc(sizeof(int)); *k85 = 0;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=0 */
    search_key = 0;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k95 = malloc(sizeof(int)); *k95 = 0;
    alloc_keys[alloc_count++] = k95;
    treetable_add(table, k95, k95);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k100 = malloc(sizeof(int)); *k100 = 0;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);
    assert(balanced(table) && sorted(table));

    /* add key=11 */
    int *k105 = malloc(sizeof(int)); *k105 = 11;
    alloc_keys[alloc_count++] = k105;
    treetable_add(table, k105, k105);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k110 = malloc(sizeof(int)); *k110 = 0;
    alloc_keys[alloc_count++] = k110;
    treetable_add(table, k110, k110);
    assert(balanced(table) && sorted(table));

    /* add key=83886080 */
    int *k115 = malloc(sizeof(int)); *k115 = 83886080;
    alloc_keys[alloc_count++] = k115;
    treetable_add(table, k115, k115);
    assert(balanced(table) && sorted(table));

    /* add key=167782684 */
    int *k120 = malloc(sizeof(int)); *k120 = 167782684;
    alloc_keys[alloc_count++] = k120;
    treetable_add(table, k120, k120);
    assert(balanced(table) && sorted(table));

    /* add key=655871 */
    int *k125 = malloc(sizeof(int)); *k125 = 655871;
    alloc_keys[alloc_count++] = k125;
    treetable_add(table, k125, k125);
    assert(balanced(table) && sorted(table));

    /* add key=234883584 */
    int *k130 = malloc(sizeof(int)); *k130 = 234883584;
    alloc_keys[alloc_count++] = k130;
    treetable_add(table, k130, k130);
    assert(balanced(table) && sorted(table));

    /* get key=10 */
    search_key = 10;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=2130706432 */
    int *k140 = malloc(sizeof(int)); *k140 = 2130706432;
    alloc_keys[alloc_count++] = k140;
    treetable_add(table, k140, k140);
    assert(balanced(table) && sorted(table));

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
