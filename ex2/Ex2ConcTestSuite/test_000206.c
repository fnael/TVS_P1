/* Property: get_first_key correctness: must return minimum key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[83];
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

    /* add key=0 */
    int *k80 = malloc(sizeof(int)); *k80 = 0;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k85 = malloc(sizeof(int)); *k85 = 0;
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

    /* add key=-352321536 */
    int *k190 = malloc(sizeof(int)); *k190 = -352321536;
    alloc_keys[alloc_count++] = k190;
    treetable_add(table, k190, k190);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-83886080 */
    search_key = -83886080;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=65535 */
    search_key = 65535;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=672768 */
    int *k205 = malloc(sizeof(int)); *k205 = 672768;
    alloc_keys[alloc_count++] = k205;
    treetable_add(table, k205, k205);
    assert(balanced(table) && sorted(table));

    /* get key=0 */
    search_key = 0;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=658255 */
    int *k215 = malloc(sizeof(int)); *k215 = 658255;
    alloc_keys[alloc_count++] = k215;
    treetable_add(table, k215, k215);
    assert(balanced(table) && sorted(table));

    /* add key=15532292 */
    int *k220 = malloc(sizeof(int)); *k220 = 15532292;
    alloc_keys[alloc_count++] = k220;
    treetable_add(table, k220, k220);
    assert(balanced(table) && sorted(table));

    /* add key=1 */
    int *k225 = malloc(sizeof(int)); *k225 = 1;
    alloc_keys[alloc_count++] = k225;
    treetable_add(table, k225, k225);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k230 = malloc(sizeof(int)); *k230 = 0;
    alloc_keys[alloc_count++] = k230;
    treetable_add(table, k230, k230);
    assert(balanced(table) && sorted(table));

    /* add key=1140850688 */
    int *k235 = malloc(sizeof(int)); *k235 = 1140850688;
    alloc_keys[alloc_count++] = k235;
    treetable_add(table, k235, k235);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=-285177600 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=-11993088 */
    int *k245 = malloc(sizeof(int)); *k245 = -11993088;
    alloc_keys[alloc_count++] = k245;
    treetable_add(table, k245, k245);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k250 = malloc(sizeof(int)); *k250 = 0;
    alloc_keys[alloc_count++] = k250;
    treetable_add(table, k250, k250);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=15993088 */
    search_key = 15993088;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=16640 */
    int *k260 = malloc(sizeof(int)); *k260 = 16640;
    alloc_keys[alloc_count++] = k260;
    treetable_add(table, k260, k260);
    assert(balanced(table) && sorted(table));

    /* add key=-2147482112 */
    int *k265 = malloc(sizeof(int)); *k265 = -2147482112;
    alloc_keys[alloc_count++] = k265;
    treetable_add(table, k265, k265);
    assert(balanced(table) && sorted(table));

    /* add key=960577857 */
    int *k270 = malloc(sizeof(int)); *k270 = 960577857;
    alloc_keys[alloc_count++] = k270;
    treetable_add(table, k270, k270);
    assert(balanced(table) && sorted(table));

    /* get key=-200736753 */
    search_key = -200736753;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-50529028 */
    int *k280 = malloc(sizeof(int)); *k280 = -50529028;
    alloc_keys[alloc_count++] = k280;
    treetable_add(table, k280, k280);
    assert(balanced(table) && sorted(table));

    /* add key=-50529028 */
    int *k285 = malloc(sizeof(int)); *k285 = -50529028;
    alloc_keys[alloc_count++] = k285;
    treetable_add(table, k285, k285);
    assert(balanced(table) && sorted(table));

    /* add key=-50529028 */
    int *k290 = malloc(sizeof(int)); *k290 = -50529028;
    alloc_keys[alloc_count++] = k290;
    treetable_add(table, k290, k290);
    assert(balanced(table) && sorted(table));

    /* add key=-50529028 */
    int *k295 = malloc(sizeof(int)); *k295 = -50529028;
    alloc_keys[alloc_count++] = k295;
    treetable_add(table, k295, k295);
    assert(balanced(table) && sorted(table));

    /* add key=-50529028 */
    int *k300 = malloc(sizeof(int)); *k300 = -50529028;
    alloc_keys[alloc_count++] = k300;
    treetable_add(table, k300, k300);
    assert(balanced(table) && sorted(table));

    /* add key=-33751812 */
    int *k305 = malloc(sizeof(int)); *k305 = -33751812;
    alloc_keys[alloc_count++] = k305;
    treetable_add(table, k305, k305);
    assert(balanced(table) && sorted(table));

    /* add key=1684275200 */
    int *k310 = malloc(sizeof(int)); *k310 = 1684275200;
    alloc_keys[alloc_count++] = k310;
    treetable_add(table, k310, k310);
    assert(balanced(table) && sorted(table));

    /* add key=-67372188 */
    int *k315 = malloc(sizeof(int)); *k315 = -67372188;
    alloc_keys[alloc_count++] = k315;
    treetable_add(table, k315, k315);
    assert(balanced(table) && sorted(table));

    /* get key=39946 */
    search_key = 39946;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-60537744 */
    int *k325 = malloc(sizeof(int)); *k325 = -60537744;
    alloc_keys[alloc_count++] = k325;
    treetable_add(table, k325, k325);
    assert(balanced(table) && sorted(table));

    /* get key=0 */
    search_key = 0;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1090519552 */
    int *k335 = malloc(sizeof(int)); *k335 = 1090519552;
    alloc_keys[alloc_count++] = k335;
    treetable_add(table, k335, k335);
    assert(balanced(table) && sorted(table));

    /* get key=184303937 */
    search_key = 184303937;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=16774025 */
    int *k345 = malloc(sizeof(int)); *k345 = 16774025;
    alloc_keys[alloc_count++] = k345;
    treetable_add(table, k345, k345);
    assert(balanced(table) && sorted(table));

    /* add key=168513280 */
    int *k350 = malloc(sizeof(int)); *k350 = 168513280;
    alloc_keys[alloc_count++] = k350;
    treetable_add(table, k350, k350);
    assert(balanced(table) && sorted(table));

    /* add key=-318700544 */
    int *k355 = malloc(sizeof(int)); *k355 = -318700544;
    alloc_keys[alloc_count++] = k355;
    treetable_add(table, k355, k355);
    assert(balanced(table) && sorted(table));

    /* add key=256 */
    int *k360 = malloc(sizeof(int)); *k360 = 256;
    alloc_keys[alloc_count++] = k360;
    treetable_add(table, k360, k360);
    assert(balanced(table) && sorted(table));

    /* add key=-2147464960 */
    int *k365 = malloc(sizeof(int)); *k365 = -2147464960;
    alloc_keys[alloc_count++] = k365;
    treetable_add(table, k365, k365);
    assert(balanced(table) && sorted(table));

    /* add key=1094799104 */
    int *k370 = malloc(sizeof(int)); *k370 = 1094799104;
    alloc_keys[alloc_count++] = k370;
    treetable_add(table, k370, k370);
    assert(balanced(table) && sorted(table));

    /* get key=-2147464960 */
    search_key = -2147464960;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=1140850688 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=1094778889 */
    int *k385 = malloc(sizeof(int)); *k385 = 1094778889;
    alloc_keys[alloc_count++] = k385;
    treetable_add(table, k385, k385);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k390 = malloc(sizeof(int)); *k390 = 0;
    alloc_keys[alloc_count++] = k390;
    treetable_add(table, k390, k390);
    assert(balanced(table) && sorted(table));

    /* get key=1090551808 */
    search_key = 1090551808;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=255934785 */
    search_key = 255934785;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=4194304 */
    search_key = 4194304;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
