/* Property: get_first_key correctness: must return minimum key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[39];
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

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=2 */
    search_key = 2;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=16842753 */
    search_key = 16842753;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=16843009 */
    search_key = 16843009;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=16843009 */
    search_key = 16843009;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=16843009 */
    search_key = 16843009;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=16843009 */
    search_key = 16843009;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=16843009 */
    search_key = 16843009;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=16843009 */
    search_key = 16843009;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=50331648 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=256 */
    search_key = 256;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=0 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=16777475 */
    int *k90 = malloc(sizeof(int)); *k90 = 16777475;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);
    assert(balanced(table) && sorted(table));

    /* add key=2560 */
    int *k95 = malloc(sizeof(int)); *k95 = 2560;
    alloc_keys[alloc_count++] = k95;
    treetable_add(table, k95, k95);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k100 = malloc(sizeof(int)); *k100 = 0;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);
    assert(balanced(table) && sorted(table));

    /* add key=2816 */
    int *k105 = malloc(sizeof(int)); *k105 = 2816;
    alloc_keys[alloc_count++] = k105;
    treetable_add(table, k105, k105);
    assert(balanced(table) && sorted(table));

    /* add key=469762048 */
    int *k110 = malloc(sizeof(int)); *k110 = 469762048;
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

    /* get_first_key key=1094795585 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=2 */
    search_key = 2;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=1 */
    search_key = 1;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k145 = malloc(sizeof(int)); *k145 = 0;
    alloc_keys[alloc_count++] = k145;
    treetable_add(table, k145, k145);
    assert(balanced(table) && sorted(table));

    /* add key=11 */
    int *k150 = malloc(sizeof(int)); *k150 = 11;
    alloc_keys[alloc_count++] = k150;
    treetable_add(table, k150, k150);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k155 = malloc(sizeof(int)); *k155 = 0;
    alloc_keys[alloc_count++] = k155;
    treetable_add(table, k155, k155);
    assert(balanced(table) && sorted(table));

    /* add key=83886080 */
    int *k160 = malloc(sizeof(int)); *k160 = 83886080;
    alloc_keys[alloc_count++] = k160;
    treetable_add(table, k160, k160);
    assert(balanced(table) && sorted(table));

    /* add key=167782684 */
    int *k165 = malloc(sizeof(int)); *k165 = 167782684;
    alloc_keys[alloc_count++] = k165;
    treetable_add(table, k165, k165);
    assert(balanced(table) && sorted(table));

    /* add key=655871 */
    int *k170 = malloc(sizeof(int)); *k170 = 655871;
    alloc_keys[alloc_count++] = k170;
    treetable_add(table, k170, k170);
    assert(balanced(table) && sorted(table));

    /* add key=2560 */
    int *k175 = malloc(sizeof(int)); *k175 = 2560;
    alloc_keys[alloc_count++] = k175;
    treetable_add(table, k175, k175);
    assert(balanced(table) && sorted(table));

    /* get key=10 */
    search_key = 10;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=2130706432 */
    int *k185 = malloc(sizeof(int)); *k185 = 2130706432;
    alloc_keys[alloc_count++] = k185;
    treetable_add(table, k185, k185);
    assert(balanced(table) && sorted(table));

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
