/* Property: get_first_key correctness: must return minimum key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[45];
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

    /* add key=64 */
    int *k15 = malloc(sizeof(int)); *k15 = 64;
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

    /* add key=83953679 */
    int *k40 = malloc(sizeof(int)); *k40 = 83953679;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);
    assert(balanced(table) && sorted(table));

    /* add key=473046044 */
    int *k45 = malloc(sizeof(int)); *k45 = 473046044;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);
    assert(balanced(table) && sorted(table));

    /* add key=471604252 */
    int *k50 = malloc(sizeof(int)); *k50 = 471604252;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);
    assert(balanced(table) && sorted(table));

    /* add key=471604252 */
    int *k55 = malloc(sizeof(int)); *k55 = 471604252;
    alloc_keys[alloc_count++] = k55;
    treetable_add(table, k55, k55);
    assert(balanced(table) && sorted(table));

    /* add key=471604252 */
    int *k60 = malloc(sizeof(int)); *k60 = 471604252;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);
    assert(balanced(table) && sorted(table));

    /* add key=471604252 */
    int *k65 = malloc(sizeof(int)); *k65 = 471604252;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);
    assert(balanced(table) && sorted(table));

    /* add key=471604252 */
    int *k70 = malloc(sizeof(int)); *k70 = 471604252;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);
    assert(balanced(table) && sorted(table));

    /* add key=7196 */
    int *k75 = malloc(sizeof(int)); *k75 = 7196;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k80 = malloc(sizeof(int)); *k80 = 0;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=0 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=16776960 */
    int *k90 = malloc(sizeof(int)); *k90 = 16776960;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);
    assert(balanced(table) && sorted(table));

    /* add key=662784 */
    int *k95 = malloc(sizeof(int)); *k95 = 662784;
    alloc_keys[alloc_count++] = k95;
    treetable_add(table, k95, k95);
    assert(balanced(table) && sorted(table));

    /* add key=471597312 */
    int *k100 = malloc(sizeof(int)); *k100 = 471597312;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);
    assert(balanced(table) && sorted(table));

    /* add key=471604252 */
    int *k105 = malloc(sizeof(int)); *k105 = 471604252;
    alloc_keys[alloc_count++] = k105;
    treetable_add(table, k105, k105);
    assert(balanced(table) && sorted(table));

    /* add key=471604252 */
    int *k110 = malloc(sizeof(int)); *k110 = 471604252;
    alloc_keys[alloc_count++] = k110;
    treetable_add(table, k110, k110);
    assert(balanced(table) && sorted(table));

    /* add key=32796 */
    int *k115 = malloc(sizeof(int)); *k115 = 32796;
    alloc_keys[alloc_count++] = k115;
    treetable_add(table, k115, k115);
    assert(balanced(table) && sorted(table));

    /* add key=167804930 */
    int *k120 = malloc(sizeof(int)); *k120 = 167804930;
    alloc_keys[alloc_count++] = k120;
    treetable_add(table, k120, k120);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=471597312 */
    search_key = 471597312;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=471604252 */
    int *k130 = malloc(sizeof(int)); *k130 = 471604252;
    alloc_keys[alloc_count++] = k130;
    treetable_add(table, k130, k130);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=553648128 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_first_key key=16777216 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=282 */
    search_key = 282;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=251660800 */
    int *k150 = malloc(sizeof(int)); *k150 = 251660800;
    alloc_keys[alloc_count++] = k150;
    treetable_add(table, k150, k150);
    assert(balanced(table) && sorted(table));

    /* add key=-67173375 */
    int *k155 = malloc(sizeof(int)); *k155 = -67173375;
    alloc_keys[alloc_count++] = k155;
    treetable_add(table, k155, k155);
    assert(balanced(table) && sorted(table));

    /* add key=471599616 */
    int *k160 = malloc(sizeof(int)); *k160 = 471599616;
    alloc_keys[alloc_count++] = k160;
    treetable_add(table, k160, k160);
    assert(balanced(table) && sorted(table));

    /* add key=471599616 */
    int *k165 = malloc(sizeof(int)); *k165 = 471599616;
    alloc_keys[alloc_count++] = k165;
    treetable_add(table, k165, k165);
    assert(balanced(table) && sorted(table));

    /* add key=471604252 */
    int *k170 = malloc(sizeof(int)); *k170 = 471604252;
    alloc_keys[alloc_count++] = k170;
    treetable_add(table, k170, k170);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=185273099 */
    search_key = 185273099;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-504233973 */
    search_key = -504233973;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-505290271 */
    search_key = -505290271;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=14803425 */
    search_key = 14803425;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-1342177280 */
    int *k195 = malloc(sizeof(int)); *k195 = -1342177280;
    alloc_keys[alloc_count++] = k195;
    treetable_add(table, k195, k195);
    assert(balanced(table) && sorted(table));

    /* add key=-1330597712 */
    int *k200 = malloc(sizeof(int)); *k200 = -1330597712;
    alloc_keys[alloc_count++] = k200;
    treetable_add(table, k200, k200);
    assert(balanced(table) && sorted(table));

    /* add key=-1330597712 */
    int *k205 = malloc(sizeof(int)); *k205 = -1330597712;
    alloc_keys[alloc_count++] = k205;
    treetable_add(table, k205, k205);
    assert(balanced(table) && sorted(table));

    /* add key=-1330597712 */
    int *k210 = malloc(sizeof(int)); *k210 = -1330597712;
    alloc_keys[alloc_count++] = k210;
    treetable_add(table, k210, k210);
    assert(balanced(table) && sorted(table));

    /* add key=167817392 */
    int *k215 = malloc(sizeof(int)); *k215 = 167817392;
    alloc_keys[alloc_count++] = k215;
    treetable_add(table, k215, k215);
    assert(balanced(table) && sorted(table));

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
