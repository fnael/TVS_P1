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

    /* get_first_key key=16384000 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

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

    /* add key=672768 */
    int *k65 = malloc(sizeof(int)); *k65 = 672768;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);
    assert(balanced(table) && sorted(table));

    /* get key=0 */
    search_key = 0;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=8388681 */
    int *k75 = malloc(sizeof(int)); *k75 = 8388681;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-200736753 */
    search_key = -200736753;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=117901063 */
    int *k90 = malloc(sizeof(int)); *k90 = 117901063;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=117901063 */
    search_key = 117901063;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=117901063 */
    search_key = 117901063;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=117901063 */
    search_key = 117901063;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=255 */
    search_key = 255;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-1996488704 */
    int *k115 = malloc(sizeof(int)); *k115 = -1996488704;
    alloc_keys[alloc_count++] = k115;
    treetable_add(table, k115, k115);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k120 = malloc(sizeof(int)); *k120 = 0;
    alloc_keys[alloc_count++] = k120;
    treetable_add(table, k120, k120);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=1094795520 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=15993088 */
    search_key = 15993088;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=662016 */
    int *k140 = malloc(sizeof(int)); *k140 = 662016;
    alloc_keys[alloc_count++] = k140;
    treetable_add(table, k140, k140);
    assert(balanced(table) && sorted(table));

    /* add key=672768 */
    int *k145 = malloc(sizeof(int)); *k145 = 672768;
    alloc_keys[alloc_count++] = k145;
    treetable_add(table, k145, k145);
    assert(balanced(table) && sorted(table));

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
