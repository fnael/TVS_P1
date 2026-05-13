/* Property: get_first_key correctness: must return minimum key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[29];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1094795520 */
    int *k5 = malloc(sizeof(int)); *k5 = 1094795520;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=50331648 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=655616 */
    search_key = 655616;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=83886080 */
    int *k20 = malloc(sizeof(int)); *k20 = 83886080;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);
    assert(balanced(table) && sorted(table));

    /* add key=167782684 */
    int *k25 = malloc(sizeof(int)); *k25 = 167782684;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);
    assert(balanced(table) && sorted(table));

    /* add key=655871 */
    int *k30 = malloc(sizeof(int)); *k30 = 655871;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);
    assert(balanced(table) && sorted(table));

    /* add key=1094781440 */
    int *k35 = malloc(sizeof(int)); *k35 = 1094781440;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);
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
    int *k50 = malloc(sizeof(int)); *k50 = 66304;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);
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
    int *k65 = malloc(sizeof(int)); *k65 = 10;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);
    assert(balanced(table) && sorted(table));

    /* add key=66304 */
    int *k70 = malloc(sizeof(int)); *k70 = 66304;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);
    assert(balanced(table) && sorted(table));

    /* get key=655360 */
    search_key = 655360;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k80 = malloc(sizeof(int)); *k80 = 0;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);
    assert(balanced(table) && sorted(table));

    /* add key=720896 */
    int *k85 = malloc(sizeof(int)); *k85 = 720896;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k90 = malloc(sizeof(int)); *k90 = 0;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k95 = malloc(sizeof(int)); *k95 = 0;
    alloc_keys[alloc_count++] = k95;
    treetable_add(table, k95, k95);
    assert(balanced(table) && sorted(table));

    /* add key=184549376 */
    int *k100 = malloc(sizeof(int)); *k100 = 184549376;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);
    assert(balanced(table) && sorted(table));

    /* add key=8323072 */
    int *k105 = malloc(sizeof(int)); *k105 = 8323072;
    alloc_keys[alloc_count++] = k105;
    treetable_add(table, k105, k105);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k110 = malloc(sizeof(int)); *k110 = 0;
    alloc_keys[alloc_count++] = k110;
    treetable_add(table, k110, k110);
    assert(balanced(table) && sorted(table));

    /* add key=-553648128 */
    int *k115 = malloc(sizeof(int)); *k115 = -553648128;
    alloc_keys[alloc_count++] = k115;
    treetable_add(table, k115, k115);
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
    int *k135 = malloc(sizeof(int)); *k135 = 1835008;
    alloc_keys[alloc_count++] = k135;
    treetable_add(table, k135, k135);
    assert(balanced(table) && sorted(table));

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
