/* Property: get_first_key correctness: must return minimum key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[69];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=83894371 */
    int *k0 = malloc(sizeof(int)); *k0 = 83894371;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);
    assert(balanced(table) && sorted(table));

    /* add key=662016 */
    int *k5 = malloc(sizeof(int)); *k5 = 662016;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);
    assert(balanced(table) && sorted(table));

    /* add key=8340480 */
    int *k10 = malloc(sizeof(int)); *k10 = 8340480;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=29 */
    search_key = 29;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1258291712 */
    int *k20 = malloc(sizeof(int)); *k20 = 1258291712;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);
    assert(balanced(table) && sorted(table));

    /* get key=1631666497 */
    search_key = 1631666497;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=150998849 */
    search_key = 150998849;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=16777216 */
    int *k35 = malloc(sizeof(int)); *k35 = 16777216;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=-336860416 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_greater_than key=-336860181 */
    search_key = -336860181;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=16777451 */
    search_key = 16777451;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=2097152 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-2147482624 */
    int *k70 = malloc(sizeof(int)); *k70 = -2147482624;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);
    assert(balanced(table) && sorted(table));

    /* add key=1094795585 */
    int *k75 = malloc(sizeof(int)); *k75 = 1094795585;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);
    assert(balanced(table) && sorted(table));

    /* get key=659265 */
    search_key = 659265;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-58768638 */
    int *k85 = malloc(sizeof(int)); *k85 = -58768638;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);
    assert(balanced(table) && sorted(table));

    /* add key=-50529028 */
    int *k90 = malloc(sizeof(int)); *k90 = -50529028;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);
    assert(balanced(table) && sorted(table));

    /* add key=-50529028 */
    int *k95 = malloc(sizeof(int)); *k95 = -50529028;
    alloc_keys[alloc_count++] = k95;
    treetable_add(table, k95, k95);
    assert(balanced(table) && sorted(table));

    /* add key=16579836 */
    int *k100 = malloc(sizeof(int)); *k100 = 16579836;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);
    assert(balanced(table) && sorted(table));

    /* get key=0 */
    search_key = 0;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1094778889 */
    int *k110 = malloc(sizeof(int)); *k110 = 1094778889;
    alloc_keys[alloc_count++] = k110;
    treetable_add(table, k110, k110);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=10 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=8978442 */
    int *k125 = malloc(sizeof(int)); *k125 = 8978442;
    alloc_keys[alloc_count++] = k125;
    treetable_add(table, k125, k125);
    assert(balanced(table) && sorted(table));

    /* add key=1224736768 */
    int *k130 = malloc(sizeof(int)); *k130 = 1224736768;
    alloc_keys[alloc_count++] = k130;
    treetable_add(table, k130, k130);
    assert(balanced(table) && sorted(table));

    /* add key=792789120 */
    int *k135 = malloc(sizeof(int)); *k135 = 792789120;
    alloc_keys[alloc_count++] = k135;
    treetable_add(table, k135, k135);
    assert(balanced(table) && sorted(table));

    /* get key=255934785 */
    search_key = 255934785;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-1660881911 */
    int *k145 = malloc(sizeof(int)); *k145 = -1660881911;
    alloc_keys[alloc_count++] = k145;
    treetable_add(table, k145, k145);
    assert(balanced(table) && sorted(table));

    /* get key=0 */
    search_key = 0;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=1090520319 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_first_key key=10 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=8978442 */
    int *k165 = malloc(sizeof(int)); *k165 = 8978442;
    alloc_keys[alloc_count++] = k165;
    treetable_add(table, k165, k165);
    assert(balanced(table) && sorted(table));

    /* add key=1224736768 */
    int *k170 = malloc(sizeof(int)); *k170 = 1224736768;
    alloc_keys[alloc_count++] = k170;
    treetable_add(table, k170, k170);
    assert(balanced(table) && sorted(table));

    /* add key=1094779008 */
    int *k175 = malloc(sizeof(int)); *k175 = 1094779008;
    alloc_keys[alloc_count++] = k175;
    treetable_add(table, k175, k175);
    assert(balanced(table) && sorted(table));

    /* get key=255934785 */
    search_key = 255934785;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=1140850688 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_greater_than key=0 */
    search_key = 0;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=2561 */
    int *k195 = malloc(sizeof(int)); *k195 = 2561;
    alloc_keys[alloc_count++] = k195;
    treetable_add(table, k195, k195);
    assert(balanced(table) && sorted(table));

    /* add key=2560 */
    int *k200 = malloc(sizeof(int)); *k200 = 2560;
    alloc_keys[alloc_count++] = k200;
    treetable_add(table, k200, k200);
    assert(balanced(table) && sorted(table));

    /* add key=2571 */
    int *k205 = malloc(sizeof(int)); *k205 = 2571;
    alloc_keys[alloc_count++] = k205;
    treetable_add(table, k205, k205);
    assert(balanced(table) && sorted(table));

    /* add key=2561 */
    int *k210 = malloc(sizeof(int)); *k210 = 2561;
    alloc_keys[alloc_count++] = k210;
    treetable_add(table, k210, k210);
    assert(balanced(table) && sorted(table));

    /* add key=10 */
    int *k215 = malloc(sizeof(int)); *k215 = 10;
    alloc_keys[alloc_count++] = k215;
    treetable_add(table, k215, k215);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k220 = malloc(sizeof(int)); *k220 = 0;
    alloc_keys[alloc_count++] = k220;
    treetable_add(table, k220, k220);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k225 = malloc(sizeof(int)); *k225 = 0;
    alloc_keys[alloc_count++] = k225;
    treetable_add(table, k225, k225);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k230 = malloc(sizeof(int)); *k230 = 0;
    alloc_keys[alloc_count++] = k230;
    treetable_add(table, k230, k230);
    assert(balanced(table) && sorted(table));

    /* add key=169476096 */
    int *k235 = malloc(sizeof(int)); *k235 = 169476096;
    alloc_keys[alloc_count++] = k235;
    treetable_add(table, k235, k235);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k240 = malloc(sizeof(int)); *k240 = 0;
    alloc_keys[alloc_count++] = k240;
    treetable_add(table, k240, k240);
    assert(balanced(table) && sorted(table));

    /* add key=2561 */
    int *k245 = malloc(sizeof(int)); *k245 = 2561;
    alloc_keys[alloc_count++] = k245;
    treetable_add(table, k245, k245);
    assert(balanced(table) && sorted(table));

    /* add key=167837696 */
    int *k250 = malloc(sizeof(int)); *k250 = 167837696;
    alloc_keys[alloc_count++] = k250;
    treetable_add(table, k250, k250);
    assert(balanced(table) && sorted(table));

    /* add key=167773184 */
    int *k255 = malloc(sizeof(int)); *k255 = 167773184;
    alloc_keys[alloc_count++] = k255;
    treetable_add(table, k255, k255);
    assert(balanced(table) && sorted(table));

    /* add key=168493056 */
    int *k260 = malloc(sizeof(int)); *k260 = 168493056;
    alloc_keys[alloc_count++] = k260;
    treetable_add(table, k260, k260);
    assert(balanced(table) && sorted(table));

    /* add key=167772160 */
    int *k265 = malloc(sizeof(int)); *k265 = 167772160;
    alloc_keys[alloc_count++] = k265;
    treetable_add(table, k265, k265);
    assert(balanced(table) && sorted(table));

    /* add key=168493056 */
    int *k270 = malloc(sizeof(int)); *k270 = 168493056;
    alloc_keys[alloc_count++] = k270;
    treetable_add(table, k270, k270);
    assert(balanced(table) && sorted(table));

    /* add key=167838720 */
    int *k275 = malloc(sizeof(int)); *k275 = 167838720;
    alloc_keys[alloc_count++] = k275;
    treetable_add(table, k275, k275);
    assert(balanced(table) && sorted(table));

    /* add key=672768 */
    int *k280 = malloc(sizeof(int)); *k280 = 672768;
    alloc_keys[alloc_count++] = k280;
    treetable_add(table, k280, k280);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=15993088 */
    search_key = 15993088;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=0 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=16777218 */
    int *k295 = malloc(sizeof(int)); *k295 = 16777218;
    alloc_keys[alloc_count++] = k295;
    treetable_add(table, k295, k295);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=262144 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_first_key key=184549376 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_first_key key=17039360 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_first_key key=172228608 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=-200736753 */
    int *k320 = malloc(sizeof(int)); *k320 = -200736753;
    alloc_keys[alloc_count++] = k320;
    treetable_add(table, k320, k320);
    assert(balanced(table) && sorted(table));

    /* add key=1094795585 */
    int *k325 = malloc(sizeof(int)); *k325 = 1094795585;
    alloc_keys[alloc_count++] = k325;
    treetable_add(table, k325, k325);
    assert(balanced(table) && sorted(table));

    /* get key=255934785 */
    search_key = 255934785;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=0 */
    search_key = 0;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
