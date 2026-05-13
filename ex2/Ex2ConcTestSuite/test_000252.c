/* Property: get_first_key correctness: must return minimum key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[254];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=16777453 */
    int *k0 = malloc(sizeof(int)); *k0 = 16777453;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k5 = malloc(sizeof(int)); *k5 = 0;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);
    assert(balanced(table) && sorted(table));

    /* add key=1280 */
    int *k10 = malloc(sizeof(int)); *k10 = 1280;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=10 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=8978559 */
    int *k20 = malloc(sizeof(int)); *k20 = 8978559;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);
    assert(balanced(table) && sorted(table));

    /* add key=28 */
    int *k25 = malloc(sizeof(int)); *k25 = 28;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=1094795520 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=167854401 */
    search_key = 167854401;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=167773184 */
    int *k40 = malloc(sizeof(int)); *k40 = 167773184;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);
    assert(balanced(table) && sorted(table));

    /* add key=168493056 */
    int *k45 = malloc(sizeof(int)); *k45 = 168493056;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);
    assert(balanced(table) && sorted(table));

    /* add key=235536613 */
    int *k50 = malloc(sizeof(int)); *k50 = 235536613;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);
    assert(balanced(table) && sorted(table));

    /* add key=1090584608 */
    int *k55 = malloc(sizeof(int)); *k55 = 1090584608;
    alloc_keys[alloc_count++] = k55;
    treetable_add(table, k55, k55);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=16705 */
    search_key = 16705;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=169492736 */
    int *k70 = malloc(sizeof(int)); *k70 = 169492736;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);
    assert(balanced(table) && sorted(table));

    /* add key=155451392 */
    int *k75 = malloc(sizeof(int)); *k75 = 155451392;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);
    assert(balanced(table) && sorted(table));

    /* get key=137 */
    search_key = 137;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-1929360896 */
    int *k85 = malloc(sizeof(int)); *k85 = -1929360896;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);
    assert(balanced(table) && sorted(table));

    /* add key=1094799104 */
    int *k90 = malloc(sizeof(int)); *k90 = 1094799104;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);
    assert(balanced(table) && sorted(table));

    /* get key=167837792 */
    search_key = 167837792;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=655360 */
    int *k100 = malloc(sizeof(int)); *k100 = 655360;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);
    assert(balanced(table) && sorted(table));

    /* add key=658176 */
    int *k105 = malloc(sizeof(int)); *k105 = 658176;
    alloc_keys[alloc_count++] = k105;
    treetable_add(table, k105, k105);
    assert(balanced(table) && sorted(table));

    /* add key=169487104 */
    int *k110 = malloc(sizeof(int)); *k110 = 169487104;
    alloc_keys[alloc_count++] = k110;
    treetable_add(table, k110, k110);
    assert(balanced(table) && sorted(table));

    /* add key=172228608 */
    int *k115 = malloc(sizeof(int)); *k115 = 172228608;
    alloc_keys[alloc_count++] = k115;
    treetable_add(table, k115, k115);
    assert(balanced(table) && sorted(table));

    /* add key=137 */
    int *k120 = malloc(sizeof(int)); *k120 = 137;
    alloc_keys[alloc_count++] = k120;
    treetable_add(table, k120, k120);
    assert(balanced(table) && sorted(table));

    /* add key=8326912 */
    int *k125 = malloc(sizeof(int)); *k125 = 8326912;
    alloc_keys[alloc_count++] = k125;
    treetable_add(table, k125, k125);
    assert(balanced(table) && sorted(table));

    /* add key=1094795585 */
    int *k130 = malloc(sizeof(int)); *k130 = 1094795585;
    alloc_keys[alloc_count++] = k130;
    treetable_add(table, k130, k130);
    assert(balanced(table) && sorted(table));

    /* get key=-2147464895 */
    search_key = -2147464895;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k140 = malloc(sizeof(int)); *k140 = 0;
    alloc_keys[alloc_count++] = k140;
    treetable_add(table, k140, k140);
    assert(balanced(table) && sorted(table));

    /* add key=1090519552 */
    int *k145 = malloc(sizeof(int)); *k145 = 1090519552;
    alloc_keys[alloc_count++] = k145;
    treetable_add(table, k145, k145);
    assert(balanced(table) && sorted(table));

    /* get key=1094778945 */
    search_key = 1094778945;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=16777226 */
    search_key = 16777226;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1224736768 */
    int *k160 = malloc(sizeof(int)); *k160 = 1224736768;
    alloc_keys[alloc_count++] = k160;
    treetable_add(table, k160, k160);
    assert(balanced(table) && sorted(table));

    /* add key=1090519168 */
    int *k165 = malloc(sizeof(int)); *k165 = 1090519168;
    alloc_keys[alloc_count++] = k165;
    treetable_add(table, k165, k165);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k170 = malloc(sizeof(int)); *k170 = 0;
    alloc_keys[alloc_count++] = k170;
    treetable_add(table, k170, k170);
    assert(balanced(table) && sorted(table));

    /* add key=172228608 */
    int *k175 = malloc(sizeof(int)); *k175 = 172228608;
    alloc_keys[alloc_count++] = k175;
    treetable_add(table, k175, k175);
    assert(balanced(table) && sorted(table));

    /* add key=137 */
    int *k180 = malloc(sizeof(int)); *k180 = 137;
    alloc_keys[alloc_count++] = k180;
    treetable_add(table, k180, k180);
    assert(balanced(table) && sorted(table));

    /* add key=-2147464960 */
    int *k185 = malloc(sizeof(int)); *k185 = -2147464960;
    alloc_keys[alloc_count++] = k185;
    treetable_add(table, k185, k185);
    assert(balanced(table) && sorted(table));

    /* add key=251658240 */
    int *k190 = malloc(sizeof(int)); *k190 = 251658240;
    alloc_keys[alloc_count++] = k190;
    treetable_add(table, k190, k190);
    assert(balanced(table) && sorted(table));

    /* add key=62473 */
    int *k195 = malloc(sizeof(int)); *k195 = 62473;
    alloc_keys[alloc_count++] = k195;
    treetable_add(table, k195, k195);
    assert(balanced(table) && sorted(table));

    /* add key=65 */
    int *k200 = malloc(sizeof(int)); *k200 = 65;
    alloc_keys[alloc_count++] = k200;
    treetable_add(table, k200, k200);
    assert(balanced(table) && sorted(table));

    /* add key=65542 */
    int *k205 = malloc(sizeof(int)); *k205 = 65542;
    alloc_keys[alloc_count++] = k205;
    treetable_add(table, k205, k205);
    assert(balanced(table) && sorted(table));

    /* get key=1094271297 */
    search_key = 1094271297;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=15993088 */
    search_key = 15993088;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-50529028 */
    int *k220 = malloc(sizeof(int)); *k220 = -50529028;
    alloc_keys[alloc_count++] = k220;
    treetable_add(table, k220, k220);
    assert(balanced(table) && sorted(table));

    /* get key=1677721600 */
    search_key = 1677721600;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-67410876 */
    int *k230 = malloc(sizeof(int)); *k230 = -67410876;
    alloc_keys[alloc_count++] = k230;
    treetable_add(table, k230, k230);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=10226197 */
    search_key = 10226197;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=1682206820 */
    search_key = 1682206820;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=137 */
    int *k245 = malloc(sizeof(int)); *k245 = 137;
    alloc_keys[alloc_count++] = k245;
    treetable_add(table, k245, k245);
    assert(balanced(table) && sorted(table));

    /* add key=4194304 */
    int *k250 = malloc(sizeof(int)); *k250 = 4194304;
    alloc_keys[alloc_count++] = k250;
    treetable_add(table, k250, k250);
    assert(balanced(table) && sorted(table));

    /* get key=-62832319 */
    search_key = -62832319;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=35072 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=189726720 */
    int *k265 = malloc(sizeof(int)); *k265 = 189726720;
    alloc_keys[alloc_count++] = k265;
    treetable_add(table, k265, k265);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=17039360 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_first_key key=65536 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=4784128 */
    int *k280 = malloc(sizeof(int)); *k280 = 4784128;
    alloc_keys[alloc_count++] = k280;
    treetable_add(table, k280, k280);
    assert(balanced(table) && sorted(table));

    /* add key=1095696384 */
    int *k285 = malloc(sizeof(int)); *k285 = 1095696384;
    alloc_keys[alloc_count++] = k285;
    treetable_add(table, k285, k285);
    assert(balanced(table) && sorted(table));

    /* get key=793313345 */
    search_key = 793313345;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=10 */
    int *k295 = malloc(sizeof(int)); *k295 = 10;
    alloc_keys[alloc_count++] = k295;
    treetable_add(table, k295, k295);
    assert(balanced(table) && sorted(table));

    /* add key=65 */
    int *k300 = malloc(sizeof(int)); *k300 = 65;
    alloc_keys[alloc_count++] = k300;
    treetable_add(table, k300, k300);
    assert(balanced(table) && sorted(table));

    /* add key=8388614 */
    int *k305 = malloc(sizeof(int)); *k305 = 8388614;
    alloc_keys[alloc_count++] = k305;
    treetable_add(table, k305, k305);
    assert(balanced(table) && sorted(table));

    /* get key=1094271297 */
    search_key = 1094271297;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=15993088 */
    search_key = 15993088;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-50529028 */
    int *k320 = malloc(sizeof(int)); *k320 = -50529028;
    alloc_keys[alloc_count++] = k320;
    treetable_add(table, k320, k320);
    assert(balanced(table) && sorted(table));

    /* get key=4276480 */
    search_key = 4276480;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=0 */
    search_key = 0;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1090519552 */
    int *k335 = malloc(sizeof(int)); *k335 = 1090519552;
    alloc_keys[alloc_count++] = k335;
    treetable_add(table, k335, k335);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=150998849 */
    search_key = 150998849;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=16777216 */
    int *k350 = malloc(sizeof(int)); *k350 = 16777216;
    alloc_keys[alloc_count++] = k350;
    treetable_add(table, k350, k350);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=16777216 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_first_key key=0 */
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

    /* get key=65 */
    search_key = 65;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=0 */
    search_key = 0;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=65536 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=283 */
    int *k390 = malloc(sizeof(int)); *k390 = 283;
    alloc_keys[alloc_count++] = k390;
    treetable_add(table, k390, k390);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=1140850688 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_first_key key=35072 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=4784128 */
    int *k405 = malloc(sizeof(int)); *k405 = 4784128;
    alloc_keys[alloc_count++] = k405;
    treetable_add(table, k405, k405);
    assert(balanced(table) && sorted(table));

    /* add key=1094802176 */
    int *k410 = malloc(sizeof(int)); *k410 = 1094802176;
    alloc_keys[alloc_count++] = k410;
    treetable_add(table, k410, k410);
    assert(balanced(table) && sorted(table));

    /* add key=999745 */
    int *k415 = malloc(sizeof(int)); *k415 = 999745;
    alloc_keys[alloc_count++] = k415;
    treetable_add(table, k415, k415);
    assert(balanced(table) && sorted(table));

    /* get key=151027967 */
    search_key = 151027967;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=35072 */
    int *k425 = malloc(sizeof(int)); *k425 = 35072;
    alloc_keys[alloc_count++] = k425;
    treetable_add(table, k425, k425);
    assert(balanced(table) && sorted(table));

    /* add key=131072 */
    int *k430 = malloc(sizeof(int)); *k430 = 131072;
    alloc_keys[alloc_count++] = k430;
    treetable_add(table, k430, k430);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=999745 */
    search_key = 999745;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=244 */
    search_key = 244;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=10 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=8978442 */
    int *k455 = malloc(sizeof(int)); *k455 = 8978442;
    alloc_keys[alloc_count++] = k455;
    treetable_add(table, k455, k455);
    assert(balanced(table) && sorted(table));

    /* add key=1094795520 */
    int *k460 = malloc(sizeof(int)); *k460 = 1094795520;
    alloc_keys[alloc_count++] = k460;
    treetable_add(table, k460, k460);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=15993088 */
    search_key = 15993088;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=655616 */
    int *k475 = malloc(sizeof(int)); *k475 = 655616;
    alloc_keys[alloc_count++] = k475;
    treetable_add(table, k475, k475);
    assert(balanced(table) && sorted(table));

    /* add key=235536613 */
    int *k480 = malloc(sizeof(int)); *k480 = 235536613;
    alloc_keys[alloc_count++] = k480;
    treetable_add(table, k480, k480);
    assert(balanced(table) && sorted(table));

    /* add key=1090584608 */
    int *k485 = malloc(sizeof(int)); *k485 = 1090584608;
    alloc_keys[alloc_count++] = k485;
    treetable_add(table, k485, k485);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=16705 */
    search_key = 16705;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=169492736 */
    int *k500 = malloc(sizeof(int)); *k500 = 169492736;
    alloc_keys[alloc_count++] = k500;
    treetable_add(table, k500, k500);
    assert(balanced(table) && sorted(table));

    /* add key=155451392 */
    int *k505 = malloc(sizeof(int)); *k505 = 155451392;
    alloc_keys[alloc_count++] = k505;
    treetable_add(table, k505, k505);
    assert(balanced(table) && sorted(table));

    /* get key=16777353 */
    search_key = 16777353;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-2147464704 */
    int *k515 = malloc(sizeof(int)); *k515 = -2147464704;
    alloc_keys[alloc_count++] = k515;
    treetable_add(table, k515, k515);
    assert(balanced(table) && sorted(table));

    /* add key=1094799104 */
    int *k520 = malloc(sizeof(int)); *k520 = 1094799104;
    alloc_keys[alloc_count++] = k520;
    treetable_add(table, k520, k520);
    assert(balanced(table) && sorted(table));

    /* get key=167837792 */
    search_key = 167837792;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=655360 */
    int *k530 = malloc(sizeof(int)); *k530 = 655360;
    alloc_keys[alloc_count++] = k530;
    treetable_add(table, k530, k530);
    assert(balanced(table) && sorted(table));

    /* add key=658176 */
    int *k535 = malloc(sizeof(int)); *k535 = 658176;
    alloc_keys[alloc_count++] = k535;
    treetable_add(table, k535, k535);
    assert(balanced(table) && sorted(table));

    /* add key=169487104 */
    int *k540 = malloc(sizeof(int)); *k540 = 169487104;
    alloc_keys[alloc_count++] = k540;
    treetable_add(table, k540, k540);
    assert(balanced(table) && sorted(table));

    /* add key=172228608 */
    int *k545 = malloc(sizeof(int)); *k545 = 172228608;
    alloc_keys[alloc_count++] = k545;
    treetable_add(table, k545, k545);
    assert(balanced(table) && sorted(table));

    /* add key=137 */
    int *k550 = malloc(sizeof(int)); *k550 = 137;
    alloc_keys[alloc_count++] = k550;
    treetable_add(table, k550, k550);
    assert(balanced(table) && sorted(table));

    /* add key=8326912 */
    int *k555 = malloc(sizeof(int)); *k555 = 8326912;
    alloc_keys[alloc_count++] = k555;
    treetable_add(table, k555, k555);
    assert(balanced(table) && sorted(table));

    /* add key=1094795585 */
    int *k560 = malloc(sizeof(int)); *k560 = 1094795585;
    alloc_keys[alloc_count++] = k560;
    treetable_add(table, k560, k560);
    assert(balanced(table) && sorted(table));

    /* get key=-2147464895 */
    search_key = -2147464895;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k570 = malloc(sizeof(int)); *k570 = 0;
    alloc_keys[alloc_count++] = k570;
    treetable_add(table, k570, k570);
    assert(balanced(table) && sorted(table));

    /* add key=1543504384 */
    int *k575 = malloc(sizeof(int)); *k575 = 1543504384;
    alloc_keys[alloc_count++] = k575;
    treetable_add(table, k575, k575);
    assert(balanced(table) && sorted(table));

    /* get key=1094778945 */
    search_key = 1094778945;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=17908033 */
    search_key = 17908033;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k595 = malloc(sizeof(int)); *k595 = 0;
    alloc_keys[alloc_count++] = k595;
    treetable_add(table, k595, k595);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=46346 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=10362880 */
    search_key = 10362880;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k615 = malloc(sizeof(int)); *k615 = 0;
    alloc_keys[alloc_count++] = k615;
    treetable_add(table, k615, k615);
    assert(balanced(table) && sorted(table));

    /* add key=167837696 */
    int *k620 = malloc(sizeof(int)); *k620 = 167837696;
    alloc_keys[alloc_count++] = k620;
    treetable_add(table, k620, k620);
    assert(balanced(table) && sorted(table));

    /* add key=1560273408 */
    int *k625 = malloc(sizeof(int)); *k625 = 1560273408;
    alloc_keys[alloc_count++] = k625;
    treetable_add(table, k625, k625);
    assert(balanced(table) && sorted(table));

    /* get key=1094778945 */
    search_key = 1094778945;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=152125761 */
    search_key = 152125761;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=0 */
    search_key = 0;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=15 */
    search_key = 15;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=16777207 */
    search_key = 16777207;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=172228608 */
    int *k660 = malloc(sizeof(int)); *k660 = 172228608;
    alloc_keys[alloc_count++] = k660;
    treetable_add(table, k660, k660);
    assert(balanced(table) && sorted(table));

    /* add key=137 */
    int *k665 = malloc(sizeof(int)); *k665 = 137;
    alloc_keys[alloc_count++] = k665;
    treetable_add(table, k665, k665);
    assert(balanced(table) && sorted(table));

    /* add key=168513280 */
    int *k670 = malloc(sizeof(int)); *k670 = 168513280;
    alloc_keys[alloc_count++] = k670;
    treetable_add(table, k670, k670);
    assert(balanced(table) && sorted(table));

    /* add key=-318700544 */
    int *k675 = malloc(sizeof(int)); *k675 = -318700544;
    alloc_keys[alloc_count++] = k675;
    treetable_add(table, k675, k675);
    assert(balanced(table) && sorted(table));

    /* add key=256 */
    int *k680 = malloc(sizeof(int)); *k680 = 256;
    alloc_keys[alloc_count++] = k680;
    treetable_add(table, k680, k680);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k685 = malloc(sizeof(int)); *k685 = 0;
    alloc_keys[alloc_count++] = k685;
    treetable_add(table, k685, k685);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k690 = malloc(sizeof(int)); *k690 = 0;
    alloc_keys[alloc_count++] = k690;
    treetable_add(table, k690, k690);
    assert(balanced(table) && sorted(table));

    /* add key=8978442 */
    int *k695 = malloc(sizeof(int)); *k695 = 8978442;
    alloc_keys[alloc_count++] = k695;
    treetable_add(table, k695, k695);
    assert(balanced(table) && sorted(table));

    /* add key=1224736768 */
    int *k700 = malloc(sizeof(int)); *k700 = 1224736768;
    alloc_keys[alloc_count++] = k700;
    treetable_add(table, k700, k700);
    assert(balanced(table) && sorted(table));

    /* add key=128 */
    int *k705 = malloc(sizeof(int)); *k705 = 128;
    alloc_keys[alloc_count++] = k705;
    treetable_add(table, k705, k705);
    assert(balanced(table) && sorted(table));

    /* add key=-200736753 */
    int *k710 = malloc(sizeof(int)); *k710 = -200736753;
    alloc_keys[alloc_count++] = k710;
    treetable_add(table, k710, k710);
    assert(balanced(table) && sorted(table));

    /* add key=4259840 */
    int *k715 = malloc(sizeof(int)); *k715 = 4259840;
    alloc_keys[alloc_count++] = k715;
    treetable_add(table, k715, k715);
    assert(balanced(table) && sorted(table));

    /* add key=393216 */
    int *k720 = malloc(sizeof(int)); *k720 = 393216;
    alloc_keys[alloc_count++] = k720;
    treetable_add(table, k720, k720);
    assert(balanced(table) && sorted(table));

    /* add key=1094795520 */
    int *k725 = malloc(sizeof(int)); *k725 = 1094795520;
    alloc_keys[alloc_count++] = k725;
    treetable_add(table, k725, k725);
    assert(balanced(table) && sorted(table));

    /* get key=4075 */
    search_key = 4075;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-5 */
    int *k735 = malloc(sizeof(int)); *k735 = -5;
    alloc_keys[alloc_count++] = k735;
    treetable_add(table, k735, k735);
    assert(balanced(table) && sorted(table));

    /* add key=1140850688 */
    int *k740 = malloc(sizeof(int)); *k740 = 1140850688;
    alloc_keys[alloc_count++] = k740;
    treetable_add(table, k740, k740);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=35072 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=189726720 */
    int *k750 = malloc(sizeof(int)); *k750 = 189726720;
    alloc_keys[alloc_count++] = k750;
    treetable_add(table, k750, k750);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=17039360 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=65536 */
    search_key = 65536;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k765 = malloc(sizeof(int)); *k765 = 0;
    alloc_keys[alloc_count++] = k765;
    treetable_add(table, k765, k765);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k770 = malloc(sizeof(int)); *k770 = 0;
    alloc_keys[alloc_count++] = k770;
    treetable_add(table, k770, k770);
    assert(balanced(table) && sorted(table));

    /* add key=-1996486076 */
    int *k775 = malloc(sizeof(int)); *k775 = -1996486076;
    alloc_keys[alloc_count++] = k775;
    treetable_add(table, k775, k775);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k780 = malloc(sizeof(int)); *k780 = 0;
    alloc_keys[alloc_count++] = k780;
    treetable_add(table, k780, k780);
    assert(balanced(table) && sorted(table));

    /* get key=32768 */
    search_key = 32768;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=150998784 */
    int *k790 = malloc(sizeof(int)); *k790 = 150998784;
    alloc_keys[alloc_count++] = k790;
    treetable_add(table, k790, k790);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k795 = malloc(sizeof(int)); *k795 = 0;
    alloc_keys[alloc_count++] = k795;
    treetable_add(table, k795, k795);
    assert(balanced(table) && sorted(table));

    /* add key=2586 */
    int *k800 = malloc(sizeof(int)); *k800 = 2586;
    alloc_keys[alloc_count++] = k800;
    treetable_add(table, k800, k800);
    assert(balanced(table) && sorted(table));

    /* add key=-1996456124 */
    int *k805 = malloc(sizeof(int)); *k805 = -1996456124;
    alloc_keys[alloc_count++] = k805;
    treetable_add(table, k805, k805);
    assert(balanced(table) && sorted(table));

    /* add key=7168 */
    int *k810 = malloc(sizeof(int)); *k810 = 7168;
    alloc_keys[alloc_count++] = k810;
    treetable_add(table, k810, k810);
    assert(balanced(table) && sorted(table));

    /* add key=1094778882 */
    int *k815 = malloc(sizeof(int)); *k815 = 1094778882;
    alloc_keys[alloc_count++] = k815;
    treetable_add(table, k815, k815);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-200736753 */
    search_key = -200736753;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=167837696 */
    int *k830 = malloc(sizeof(int)); *k830 = 167837696;
    alloc_keys[alloc_count++] = k830;
    treetable_add(table, k830, k830);
    assert(balanced(table) && sorted(table));

    /* add key=167830784 */
    int *k835 = malloc(sizeof(int)); *k835 = 167830784;
    alloc_keys[alloc_count++] = k835;
    treetable_add(table, k835, k835);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=16785408 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=4276545 */
    search_key = 4276545;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=440467460 */
    int *k855 = malloc(sizeof(int)); *k855 = 440467460;
    alloc_keys[alloc_count++] = k855;
    treetable_add(table, k855, k855);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=1140850688 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=35073 */
    search_key = 35073;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=4849664 */
    int *k870 = malloc(sizeof(int)); *k870 = 4849664;
    alloc_keys[alloc_count++] = k870;
    treetable_add(table, k870, k870);
    assert(balanced(table) && sorted(table));

    /* add key=1095696384 */
    int *k875 = malloc(sizeof(int)); *k875 = 1095696384;
    alloc_keys[alloc_count++] = k875;
    treetable_add(table, k875, k875);
    assert(balanced(table) && sorted(table));

    /* get key=16801857 */
    search_key = 16801857;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=167772160 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=168493056 */
    int *k890 = malloc(sizeof(int)); *k890 = 168493056;
    alloc_keys[alloc_count++] = k890;
    treetable_add(table, k890, k890);
    assert(balanced(table) && sorted(table));

    /* add key=439025668 */
    int *k895 = malloc(sizeof(int)); *k895 = 439025668;
    alloc_keys[alloc_count++] = k895;
    treetable_add(table, k895, k895);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=1140850688 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_first_key key=35072 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=2131689472 */
    int *k910 = malloc(sizeof(int)); *k910 = 2131689472;
    alloc_keys[alloc_count++] = k910;
    treetable_add(table, k910, k910);
    assert(balanced(table) && sorted(table));

    /* add key=1094795648 */
    int *k915 = malloc(sizeof(int)); *k915 = 1094795648;
    alloc_keys[alloc_count++] = k915;
    treetable_add(table, k915, k915);
    assert(balanced(table) && sorted(table));

    /* get key=4800833 */
    search_key = 4800833;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k925 = malloc(sizeof(int)); *k925 = 0;
    alloc_keys[alloc_count++] = k925;
    treetable_add(table, k925, k925);
    assert(balanced(table) && sorted(table));

    /* add key=131072 */
    int *k930 = malloc(sizeof(int)); *k930 = 131072;
    alloc_keys[alloc_count++] = k930;
    treetable_add(table, k930, k930);
    assert(balanced(table) && sorted(table));

    /* add key=1090535745 */
    int *k935 = malloc(sizeof(int)); *k935 = 1090535745;
    alloc_keys[alloc_count++] = k935;
    treetable_add(table, k935, k935);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=289489217 */
    search_key = 289489217;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=0 */
    search_key = 0;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=11864602 */
    int *k955 = malloc(sizeof(int)); *k955 = 11864602;
    alloc_keys[alloc_count++] = k955;
    treetable_add(table, k955, k955);
    assert(balanced(table) && sorted(table));

    /* add key=1094795585 */
    int *k960 = malloc(sizeof(int)); *k960 = 1094795585;
    alloc_keys[alloc_count++] = k960;
    treetable_add(table, k960, k960);
    assert(balanced(table) && sorted(table));

    /* get key=-1642069951 */
    search_key = -1642069951;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k970 = malloc(sizeof(int)); *k970 = 0;
    alloc_keys[alloc_count++] = k970;
    treetable_add(table, k970, k970);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=16777216 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_first_key key=-1966080 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=1090535745 */
    int *k985 = malloc(sizeof(int)); *k985 = 1090535745;
    alloc_keys[alloc_count++] = k985;
    treetable_add(table, k985, k985);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=289489217 */
    search_key = 289489217;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1 */
    search_key = 1;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=4075 */
    int *k1005 = malloc(sizeof(int)); *k1005 = 4075;
    alloc_keys[alloc_count++] = k1005;
    treetable_add(table, k1005, k1005);
    assert(balanced(table) && sorted(table));

    /* add key=-5 */
    int *k1010 = malloc(sizeof(int)); *k1010 = -5;
    alloc_keys[alloc_count++] = k1010;
    treetable_add(table, k1010, k1010);
    assert(balanced(table) && sorted(table));

    /* add key=1140850688 */
    int *k1015 = malloc(sizeof(int)); *k1015 = 1140850688;
    alloc_keys[alloc_count++] = k1015;
    treetable_add(table, k1015, k1015);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=35072 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=189726720 */
    int *k1025 = malloc(sizeof(int)); *k1025 = 189726720;
    alloc_keys[alloc_count++] = k1025;
    treetable_add(table, k1025, k1025);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=17039360 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=65536 */
    search_key = 65536;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k1040 = malloc(sizeof(int)); *k1040 = 0;
    alloc_keys[alloc_count++] = k1040;
    treetable_add(table, k1040, k1040);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k1045 = malloc(sizeof(int)); *k1045 = 0;
    alloc_keys[alloc_count++] = k1045;
    treetable_add(table, k1045, k1045);
    assert(balanced(table) && sorted(table));

    /* add key=-1996486076 */
    int *k1050 = malloc(sizeof(int)); *k1050 = -1996486076;
    alloc_keys[alloc_count++] = k1050;
    treetable_add(table, k1050, k1050);
    assert(balanced(table) && sorted(table));

    /* get key=-200736753 */
    search_key = -200736753;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-50529216 */
    int *k1060 = malloc(sizeof(int)); *k1060 = -50529216;
    alloc_keys[alloc_count++] = k1060;
    treetable_add(table, k1060, k1060);
    assert(balanced(table) && sorted(table));

    /* add key=253 */
    int *k1065 = malloc(sizeof(int)); *k1065 = 253;
    alloc_keys[alloc_count++] = k1065;
    treetable_add(table, k1065, k1065);
    assert(balanced(table) && sorted(table));

    /* add key=-77314972 */
    int *k1070 = malloc(sizeof(int)); *k1070 = -77314972;
    alloc_keys[alloc_count++] = k1070;
    treetable_add(table, k1070, k1070);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-1677060613 */
    search_key = -1677060613;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1148216327 */
    int *k1080 = malloc(sizeof(int)); *k1080 = 1148216327;
    alloc_keys[alloc_count++] = k1080;
    treetable_add(table, k1080, k1080);
    assert(balanced(table) && sorted(table));

    /* add key=35324 */
    int *k1085 = malloc(sizeof(int)); *k1085 = 35324;
    alloc_keys[alloc_count++] = k1085;
    treetable_add(table, k1085, k1085);
    assert(balanced(table) && sorted(table));

    /* add key=1073741824 */
    int *k1090 = malloc(sizeof(int)); *k1090 = 1073741824;
    alloc_keys[alloc_count++] = k1090;
    treetable_add(table, k1090, k1090);
    assert(balanced(table) && sorted(table));

    /* add key=1094795585 */
    int *k1095 = malloc(sizeof(int)); *k1095 = 1094795585;
    alloc_keys[alloc_count++] = k1095;
    treetable_add(table, k1095, k1095);
    assert(balanced(table) && sorted(table));

    /* add key=8978442 */
    int *k1100 = malloc(sizeof(int)); *k1100 = 8978442;
    alloc_keys[alloc_count++] = k1100;
    treetable_add(table, k1100, k1100);
    assert(balanced(table) && sorted(table));

    /* add key=1325400064 */
    int *k1105 = malloc(sizeof(int)); *k1105 = 1325400064;
    alloc_keys[alloc_count++] = k1105;
    treetable_add(table, k1105, k1105);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=67108874 */
    search_key = 67108874;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=16777226 */
    search_key = 16777226;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1224736768 */
    int *k1120 = malloc(sizeof(int)); *k1120 = 1224736768;
    alloc_keys[alloc_count++] = k1120;
    treetable_add(table, k1120, k1120);
    assert(balanced(table) && sorted(table));

    /* add key=1325400192 */
    int *k1125 = malloc(sizeof(int)); *k1125 = 1325400192;
    alloc_keys[alloc_count++] = k1125;
    treetable_add(table, k1125, k1125);
    assert(balanced(table) && sorted(table));

    /* get key=1224753473 */
    search_key = 1224753473;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=2688 */
    search_key = 2688;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=16708 */
    int *k1140 = malloc(sizeof(int)); *k1140 = 16708;
    alloc_keys[alloc_count++] = k1140;
    treetable_add(table, k1140, k1140);
    assert(balanced(table) && sorted(table));

    /* add key=-2147482112 */
    int *k1145 = malloc(sizeof(int)); *k1145 = -2147482112;
    alloc_keys[alloc_count++] = k1145;
    treetable_add(table, k1145, k1145);
    assert(balanced(table) && sorted(table));

    /* add key=960577857 */
    int *k1150 = malloc(sizeof(int)); *k1150 = 960577857;
    alloc_keys[alloc_count++] = k1150;
    treetable_add(table, k1150, k1150);
    assert(balanced(table) && sorted(table));

    /* get key=-200736753 */
    search_key = -200736753;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-50529028 */
    int *k1160 = malloc(sizeof(int)); *k1160 = -50529028;
    alloc_keys[alloc_count++] = k1160;
    treetable_add(table, k1160, k1160);
    assert(balanced(table) && sorted(table));

    /* add key=253 */
    int *k1165 = malloc(sizeof(int)); *k1165 = 253;
    alloc_keys[alloc_count++] = k1165;
    treetable_add(table, k1165, k1165);
    assert(balanced(table) && sorted(table));

    /* add key=-77314972 */
    int *k1170 = malloc(sizeof(int)); *k1170 = -77314972;
    alloc_keys[alloc_count++] = k1170;
    treetable_add(table, k1170, k1170);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-1677060613 */
    search_key = -1677060613;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=65536 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=4784128 */
    int *k1185 = malloc(sizeof(int)); *k1185 = 4784128;
    alloc_keys[alloc_count++] = k1185;
    treetable_add(table, k1185, k1185);
    assert(balanced(table) && sorted(table));

    /* add key=1095696384 */
    int *k1190 = malloc(sizeof(int)); *k1190 = 1095696384;
    alloc_keys[alloc_count++] = k1190;
    treetable_add(table, k1190, k1190);
    assert(balanced(table) && sorted(table));

    /* get key=591986753 */
    search_key = 591986753;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=10 */
    int *k1200 = malloc(sizeof(int)); *k1200 = 10;
    alloc_keys[alloc_count++] = k1200;
    treetable_add(table, k1200, k1200);
    assert(balanced(table) && sorted(table));

    /* add key=1090521344 */
    int *k1205 = malloc(sizeof(int)); *k1205 = 1090521344;
    alloc_keys[alloc_count++] = k1205;
    treetable_add(table, k1205, k1205);
    assert(balanced(table) && sorted(table));

    /* get key=67108864 */
    search_key = 67108864;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1885601792 */
    search_key = 1885601792;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=9043044 */
    int *k1220 = malloc(sizeof(int)); *k1220 = 9043044;
    alloc_keys[alloc_count++] = k1220;
    treetable_add(table, k1220, k1220);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k1225 = malloc(sizeof(int)); *k1225 = 0;
    alloc_keys[alloc_count++] = k1225;
    treetable_add(table, k1225, k1225);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=1094795520 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=-1996485892 */
    search_key = -1996485892;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k1240 = malloc(sizeof(int)); *k1240 = 0;
    alloc_keys[alloc_count++] = k1240;
    treetable_add(table, k1240, k1240);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=2571 */
    search_key = 2571;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=65554688 */
    int *k1250 = malloc(sizeof(int)); *k1250 = 65554688;
    alloc_keys[alloc_count++] = k1250;
    treetable_add(table, k1250, k1250);
    assert(balanced(table) && sorted(table));

    /* add key=1094795520 */
    int *k1255 = malloc(sizeof(int)); *k1255 = 1094795520;
    alloc_keys[alloc_count++] = k1255;
    treetable_add(table, k1255, k1255);
    assert(balanced(table) && sorted(table));

    /* get key=35087 */
    search_key = 35087;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
