/* Property: get_first_key correctness: must return minimum key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[87];
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

    /* add key=2561 */
    int *k35 = malloc(sizeof(int)); *k35 = 2561;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);
    assert(balanced(table) && sorted(table));

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

    /* get key=67108929 */
    search_key = 67108929;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=662081 */
    int *k60 = malloc(sizeof(int)); *k60 = 662081;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);
    assert(balanced(table) && sorted(table));

    /* add key=17384448 */
    int *k65 = malloc(sizeof(int)); *k65 = 17384448;
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

    /* add key=1094795599 */
    int *k80 = malloc(sizeof(int)); *k80 = 1094795599;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);
    assert(balanced(table) && sorted(table));

    /* add key=655616 */
    int *k85 = malloc(sizeof(int)); *k85 = 655616;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);
    assert(balanced(table) && sorted(table));

    /* add key=2560 */
    int *k90 = malloc(sizeof(int)); *k90 = 2560;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);
    assert(balanced(table) && sorted(table));

    /* add key=67111435 */
    int *k95 = malloc(sizeof(int)); *k95 = 67111435;
    alloc_keys[alloc_count++] = k95;
    treetable_add(table, k95, k95);
    assert(balanced(table) && sorted(table));

    /* add key=662059 */
    int *k100 = malloc(sizeof(int)); *k100 = 662059;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);
    assert(balanced(table) && sorted(table));

    /* add key=672768 */
    int *k105 = malloc(sizeof(int)); *k105 = 672768;
    alloc_keys[alloc_count++] = k105;
    treetable_add(table, k105, k105);
    assert(balanced(table) && sorted(table));

    /* get key=0 */
    search_key = 0;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-2147451121 */
    int *k115 = malloc(sizeof(int)); *k115 = -2147451121;
    alloc_keys[alloc_count++] = k115;
    treetable_add(table, k115, k115);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=8388681 */
    search_key = 8388681;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k130 = malloc(sizeof(int)); *k130 = 0;
    alloc_keys[alloc_count++] = k130;
    treetable_add(table, k130, k130);
    assert(balanced(table) && sorted(table));

    /* add key=1094778882 */
    int *k135 = malloc(sizeof(int)); *k135 = 1094778882;
    alloc_keys[alloc_count++] = k135;
    treetable_add(table, k135, k135);
    assert(balanced(table) && sorted(table));

    /* get key=1094795520 */
    search_key = 1094795520;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=69953 */
    search_key = 69953;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=436207616 */
    int *k155 = malloc(sizeof(int)); *k155 = 436207616;
    alloc_keys[alloc_count++] = k155;
    treetable_add(table, k155, k155);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=1090519236 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=40448 */
    int *k170 = malloc(sizeof(int)); *k170 = 40448;
    alloc_keys[alloc_count++] = k170;
    treetable_add(table, k170, k170);
    assert(balanced(table) && sorted(table));

    /* add key=131072 */
    int *k175 = malloc(sizeof(int)); *k175 = 131072;
    alloc_keys[alloc_count++] = k175;
    treetable_add(table, k175, k175);
    assert(balanced(table) && sorted(table));

    /* add key=655616 */
    int *k180 = malloc(sizeof(int)); *k180 = 655616;
    alloc_keys[alloc_count++] = k180;
    treetable_add(table, k180, k180);
    assert(balanced(table) && sorted(table));

    /* add key=17432546 */
    int *k185 = malloc(sizeof(int)); *k185 = 17432546;
    alloc_keys[alloc_count++] = k185;
    treetable_add(table, k185, k185);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k190 = malloc(sizeof(int)); *k190 = 0;
    alloc_keys[alloc_count++] = k190;
    treetable_add(table, k190, k190);
    assert(balanced(table) && sorted(table));

    /* add key=67108864 */
    int *k195 = malloc(sizeof(int)); *k195 = 67108864;
    alloc_keys[alloc_count++] = k195;
    treetable_add(table, k195, k195);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k200 = malloc(sizeof(int)); *k200 = 0;
    alloc_keys[alloc_count++] = k200;
    treetable_add(table, k200, k200);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=0 */
    search_key = 0;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=640 */
    int *k210 = malloc(sizeof(int)); *k210 = 640;
    alloc_keys[alloc_count++] = k210;
    treetable_add(table, k210, k210);
    assert(balanced(table) && sorted(table));

    /* add key=262144 */
    int *k215 = malloc(sizeof(int)); *k215 = 262144;
    alloc_keys[alloc_count++] = k215;
    treetable_add(table, k215, k215);
    assert(balanced(table) && sorted(table));

    /* add key=8323072 */
    int *k220 = malloc(sizeof(int)); *k220 = 8323072;
    alloc_keys[alloc_count++] = k220;
    treetable_add(table, k220, k220);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=15 */
    search_key = 15;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=16777215 */
    search_key = 16777215;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=172228608 */
    int *k235 = malloc(sizeof(int)); *k235 = 172228608;
    alloc_keys[alloc_count++] = k235;
    treetable_add(table, k235, k235);
    assert(balanced(table) && sorted(table));

    /* add key=137 */
    int *k240 = malloc(sizeof(int)); *k240 = 137;
    alloc_keys[alloc_count++] = k240;
    treetable_add(table, k240, k240);
    assert(balanced(table) && sorted(table));

    /* add key=168513280 */
    int *k245 = malloc(sizeof(int)); *k245 = 168513280;
    alloc_keys[alloc_count++] = k245;
    treetable_add(table, k245, k245);
    assert(balanced(table) && sorted(table));

    /* add key=-318700544 */
    int *k250 = malloc(sizeof(int)); *k250 = -318700544;
    alloc_keys[alloc_count++] = k250;
    treetable_add(table, k250, k250);
    assert(balanced(table) && sorted(table));

    /* add key=256 */
    int *k255 = malloc(sizeof(int)); *k255 = 256;
    alloc_keys[alloc_count++] = k255;
    treetable_add(table, k255, k255);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k260 = malloc(sizeof(int)); *k260 = 0;
    alloc_keys[alloc_count++] = k260;
    treetable_add(table, k260, k260);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k265 = malloc(sizeof(int)); *k265 = 0;
    alloc_keys[alloc_count++] = k265;
    treetable_add(table, k265, k265);
    assert(balanced(table) && sorted(table));

    /* add key=8978442 */
    int *k270 = malloc(sizeof(int)); *k270 = 8978442;
    alloc_keys[alloc_count++] = k270;
    treetable_add(table, k270, k270);
    assert(balanced(table) && sorted(table));

    /* add key=1224736768 */
    int *k275 = malloc(sizeof(int)); *k275 = 1224736768;
    alloc_keys[alloc_count++] = k275;
    treetable_add(table, k275, k275);
    assert(balanced(table) && sorted(table));

    /* add key=128 */
    int *k280 = malloc(sizeof(int)); *k280 = 128;
    alloc_keys[alloc_count++] = k280;
    treetable_add(table, k280, k280);
    assert(balanced(table) && sorted(table));

    /* add key=-200736753 */
    int *k285 = malloc(sizeof(int)); *k285 = -200736753;
    alloc_keys[alloc_count++] = k285;
    treetable_add(table, k285, k285);
    assert(balanced(table) && sorted(table));

    /* add key=4259840 */
    int *k290 = malloc(sizeof(int)); *k290 = 4259840;
    alloc_keys[alloc_count++] = k290;
    treetable_add(table, k290, k290);
    assert(balanced(table) && sorted(table));

    /* add key=393216 */
    int *k295 = malloc(sizeof(int)); *k295 = 393216;
    alloc_keys[alloc_count++] = k295;
    treetable_add(table, k295, k295);
    assert(balanced(table) && sorted(table));

    /* add key=1094795520 */
    int *k300 = malloc(sizeof(int)); *k300 = 1094795520;
    alloc_keys[alloc_count++] = k300;
    treetable_add(table, k300, k300);
    assert(balanced(table) && sorted(table));

    /* get key=150998849 */
    search_key = 150998849;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-50529280 */
    int *k310 = malloc(sizeof(int)); *k310 = -50529280;
    alloc_keys[alloc_count++] = k310;
    treetable_add(table, k310, k310);
    assert(balanced(table) && sorted(table));

    /* add key=-50529044 */
    int *k315 = malloc(sizeof(int)); *k315 = -50529044;
    alloc_keys[alloc_count++] = k315;
    treetable_add(table, k315, k315);
    assert(balanced(table) && sorted(table));

    /* add key=-50529028 */
    int *k320 = malloc(sizeof(int)); *k320 = -50529028;
    alloc_keys[alloc_count++] = k320;
    treetable_add(table, k320, k320);
    assert(balanced(table) && sorted(table));

    /* add key=-50529028 */
    int *k325 = malloc(sizeof(int)); *k325 = -50529028;
    alloc_keys[alloc_count++] = k325;
    treetable_add(table, k325, k325);
    assert(balanced(table) && sorted(table));

    /* add key=-50529028 */
    int *k330 = malloc(sizeof(int)); *k330 = -50529028;
    alloc_keys[alloc_count++] = k330;
    treetable_add(table, k330, k330);
    assert(balanced(table) && sorted(table));

    /* add key=-50529028 */
    int *k335 = malloc(sizeof(int)); *k335 = -50529028;
    alloc_keys[alloc_count++] = k335;
    treetable_add(table, k335, k335);
    assert(balanced(table) && sorted(table));

    /* get key=1677721600 */
    search_key = 1677721600;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-67410876 */
    int *k345 = malloc(sizeof(int)); *k345 = -67410876;
    alloc_keys[alloc_count++] = k345;
    treetable_add(table, k345, k345);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=10226197 */
    search_key = 10226197;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1684369508 */
    int *k355 = malloc(sizeof(int)); *k355 = 1684369508;
    alloc_keys[alloc_count++] = k355;
    treetable_add(table, k355, k355);
    assert(balanced(table) && sorted(table));

    /* add key=25481 */
    int *k360 = malloc(sizeof(int)); *k360 = 25481;
    alloc_keys[alloc_count++] = k360;
    treetable_add(table, k360, k360);
    assert(balanced(table) && sorted(table));

    /* add key=131072 */
    int *k365 = malloc(sizeof(int)); *k365 = 131072;
    alloc_keys[alloc_count++] = k365;
    treetable_add(table, k365, k365);
    assert(balanced(table) && sorted(table));

    /* get key=-62832319 */
    search_key = -62832319;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=35072 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=189726720 */
    int *k380 = malloc(sizeof(int)); *k380 = 189726720;
    alloc_keys[alloc_count++] = k380;
    treetable_add(table, k380, k380);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=17039360 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=65536 */
    search_key = 65536;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=4784128 */
    int *k395 = malloc(sizeof(int)); *k395 = 4784128;
    alloc_keys[alloc_count++] = k395;
    treetable_add(table, k395, k395);
    assert(balanced(table) && sorted(table));

    /* add key=1095696384 */
    int *k400 = malloc(sizeof(int)); *k400 = 1095696384;
    alloc_keys[alloc_count++] = k400;
    treetable_add(table, k400, k400);
    assert(balanced(table) && sorted(table));

    /* get key=4784193 */
    search_key = 4784193;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=10 */
    int *k410 = malloc(sizeof(int)); *k410 = 10;
    alloc_keys[alloc_count++] = k410;
    treetable_add(table, k410, k410);
    assert(balanced(table) && sorted(table));

    /* add key=4784128 */
    int *k415 = malloc(sizeof(int)); *k415 = 4784128;
    alloc_keys[alloc_count++] = k415;
    treetable_add(table, k415, k415);
    assert(balanced(table) && sorted(table));

    /* add key=1094795520 */
    int *k420 = malloc(sizeof(int)); *k420 = 1094795520;
    alloc_keys[alloc_count++] = k420;
    treetable_add(table, k420, k420);
    assert(balanced(table) && sorted(table));

    /* get key=8982337 */
    search_key = 8982337;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
