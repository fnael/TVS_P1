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

    /* add key=128 */
    int *k0 = malloc(sizeof(int)); *k0 = 128;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);
    assert(balanced(table) && sorted(table));

    /* add key=983051 */
    int *k5 = malloc(sizeof(int)); *k5 = 983051;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);
    assert(balanced(table) && sorted(table));

    /* get key=471597061 */
    search_key = 471597061;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=10 */
    int *k15 = malloc(sizeof(int)); *k15 = 10;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);
    assert(balanced(table) && sorted(table));

    /* add key=471604252 */
    int *k20 = malloc(sizeof(int)); *k20 = 471604252;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);
    assert(balanced(table) && sorted(table));

    /* add key=471604252 */
    int *k25 = malloc(sizeof(int)); *k25 = 471604252;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);
    assert(balanced(table) && sorted(table));

    /* add key=-2145641444 */
    int *k30 = malloc(sizeof(int)); *k30 = -2145641444;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);
    assert(balanced(table) && sorted(table));

    /* add key=167772160 */
    int *k35 = malloc(sizeof(int)); *k35 = 167772160;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);
    assert(balanced(table) && sorted(table));

    /* add key=67174415 */
    int *k40 = malloc(sizeof(int)); *k40 = 67174415;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=167779579 */
    search_key = 167779579;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=471604252 */
    int *k50 = malloc(sizeof(int)); *k50 = 471604252;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=471604252 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=10 */
    int *k60 = malloc(sizeof(int)); *k60 = 10;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=167772170 */
    search_key = 167772170;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-100663046 */
    search_key = -100663046;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-2145648612 */
    int *k75 = malloc(sizeof(int)); *k75 = -2145648612;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);
    assert(balanced(table) && sorted(table));

    /* add key=167772160 */
    int *k80 = malloc(sizeof(int)); *k80 = 167772160;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);
    assert(balanced(table) && sorted(table));

    /* add key=67174415 */
    int *k85 = malloc(sizeof(int)); *k85 = 67174415;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=167779579 */
    search_key = 167779579;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=471604252 */
    int *k95 = malloc(sizeof(int)); *k95 = 471604252;
    alloc_keys[alloc_count++] = k95;
    treetable_add(table, k95, k95);
    assert(balanced(table) && sorted(table));

    /* add key=61952 */
    int *k100 = malloc(sizeof(int)); *k100 = 61952;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);
    assert(balanced(table) && sorted(table));

    /* add key=2088503808 */
    int *k105 = malloc(sizeof(int)); *k105 = 2088503808;
    alloc_keys[alloc_count++] = k105;
    treetable_add(table, k105, k105);
    assert(balanced(table) && sorted(table));

    /* add key=2088533116 */
    int *k110 = malloc(sizeof(int)); *k110 = 2088533116;
    alloc_keys[alloc_count++] = k110;
    treetable_add(table, k110, k110);
    assert(balanced(table) && sorted(table));

    /* add key=124 */
    int *k115 = malloc(sizeof(int)); *k115 = 124;
    alloc_keys[alloc_count++] = k115;
    treetable_add(table, k115, k115);
    assert(balanced(table) && sorted(table));

    /* get key=471604252 */
    search_key = 471604252;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=662556 */
    int *k125 = malloc(sizeof(int)); *k125 = 662556;
    alloc_keys[alloc_count++] = k125;
    treetable_add(table, k125, k125);
    assert(balanced(table) && sorted(table));

    /* add key=14680192 */
    int *k130 = malloc(sizeof(int)); *k130 = 14680192;
    alloc_keys[alloc_count++] = k130;
    treetable_add(table, k130, k130);
    assert(balanced(table) && sorted(table));

    /* add key=983050 */
    int *k135 = malloc(sizeof(int)); *k135 = 983050;
    alloc_keys[alloc_count++] = k135;
    treetable_add(table, k135, k135);
    assert(balanced(table) && sorted(table));

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
