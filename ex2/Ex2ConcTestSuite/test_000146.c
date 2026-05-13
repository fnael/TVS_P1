/* Property: get_first_key correctness: must return minimum key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[33];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=128 */
    int *k0 = malloc(sizeof(int)); *k0 = 128;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);
    assert(balanced(table) && sorted(table));

    /* add key=39 */
    int *k5 = malloc(sizeof(int)); *k5 = 39;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);
    assert(balanced(table) && sorted(table));

    /* add key=471604252 */
    int *k10 = malloc(sizeof(int)); *k10 = 471604252;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);
    assert(balanced(table) && sorted(table));

    /* add key=2130706437 */
    int *k15 = malloc(sizeof(int)); *k15 = 2130706437;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=0 */
    search_key = 0;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k25 = malloc(sizeof(int)); *k25 = 0;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k30 = malloc(sizeof(int)); *k30 = 0;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);
    assert(balanced(table) && sorted(table));

    /* add key=1792 */
    int *k35 = malloc(sizeof(int)); *k35 = 1792;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);
    assert(balanced(table) && sorted(table));

    /* add key=83951631 */
    int *k40 = malloc(sizeof(int)); *k40 = 83951631;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);
    assert(balanced(table) && sorted(table));

    /* add key=7200 */
    int *k45 = malloc(sizeof(int)); *k45 = 7200;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k50 = malloc(sizeof(int)); *k50 = 0;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k55 = malloc(sizeof(int)); *k55 = 0;
    alloc_keys[alloc_count++] = k55;
    treetable_add(table, k55, k55);
    assert(balanced(table) && sorted(table));

    /* add key=6553600 */
    int *k60 = malloc(sizeof(int)); *k60 = 6553600;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);
    assert(balanced(table) && sorted(table));

    /* add key=16777216 */
    int *k65 = malloc(sizeof(int)); *k65 = 16777216;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k70 = malloc(sizeof(int)); *k70 = 0;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);
    assert(balanced(table) && sorted(table));

    /* add key=2560 */
    int *k75 = malloc(sizeof(int)); *k75 = 2560;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);
    assert(balanced(table) && sorted(table));

    /* add key=471604313 */
    int *k80 = malloc(sizeof(int)); *k80 = 471604313;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);
    assert(balanced(table) && sorted(table));

    /* add key=471604252 */
    int *k85 = malloc(sizeof(int)); *k85 = 471604252;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);
    assert(balanced(table) && sorted(table));

    /* add key=471604252 */
    int *k90 = malloc(sizeof(int)); *k90 = 471604252;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k95 = malloc(sizeof(int)); *k95 = 0;
    alloc_keys[alloc_count++] = k95;
    treetable_add(table, k95, k95);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=16781056 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=1842176 */
    search_key = 1842176;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=471604252 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=471613761 */
    search_key = 471613761;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=28 */
    int *k125 = malloc(sizeof(int)); *k125 = 28;
    alloc_keys[alloc_count++] = k125;
    treetable_add(table, k125, k125);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=32768 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=251660800 */
    int *k135 = malloc(sizeof(int)); *k135 = 251660800;
    alloc_keys[alloc_count++] = k135;
    treetable_add(table, k135, k135);
    assert(balanced(table) && sorted(table));

    /* add key=477170176 */
    int *k140 = malloc(sizeof(int)); *k140 = 477170176;
    alloc_keys[alloc_count++] = k140;
    treetable_add(table, k140, k140);
    assert(balanced(table) && sorted(table));

    /* add key=471604252 */
    int *k145 = malloc(sizeof(int)); *k145 = 471604252;
    alloc_keys[alloc_count++] = k145;
    treetable_add(table, k145, k145);
    assert(balanced(table) && sorted(table));

    /* add key=471604252 */
    int *k150 = malloc(sizeof(int)); *k150 = 471604252;
    alloc_keys[alloc_count++] = k150;
    treetable_add(table, k150, k150);
    assert(balanced(table) && sorted(table));

    /* add key=10 */
    int *k155 = malloc(sizeof(int)); *k155 = 10;
    alloc_keys[alloc_count++] = k155;
    treetable_add(table, k155, k155);
    assert(balanced(table) && sorted(table));

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
