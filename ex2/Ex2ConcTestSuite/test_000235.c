/* Property: get_first_key correctness: must return minimum key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[134];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=231 */
    int *k0 = malloc(sizeof(int)); *k0 = 231;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);
    assert(balanced(table) && sorted(table));

    /* add key=1684300900 */
    int *k5 = malloc(sizeof(int)); *k5 = 1684300900;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);
    assert(balanced(table) && sorted(table));

    /* add key=1684300900 */
    int *k10 = malloc(sizeof(int)); *k10 = 1684300900;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);
    assert(balanced(table) && sorted(table));

    /* get key=262144 */
    search_key = 262144;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-1077952517 */
    int *k20 = malloc(sizeof(int)); *k20 = -1077952517;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-1077952577 */
    search_key = -1077952577;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1077952577 */
    search_key = -1077952577;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-70324545 */
    search_key = -70324545;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372064 */
    search_key = -67372064;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-858993413 */
    search_key = -858993413;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=16510697 */
    int *k55 = malloc(sizeof(int)); *k55 = 16510697;
    alloc_keys[alloc_count++] = k55;
    treetable_add(table, k55, k55);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1093288443 */
    search_key = 1093288443;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-67306501 */
    search_key = -67306501;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=1107033083 */
    search_key = 1107033083;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-1996455941 */
    search_key = -1996455941;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k95 = malloc(sizeof(int)); *k95 = 0;
    alloc_keys[alloc_count++] = k95;
    treetable_add(table, k95, k95);
    assert(balanced(table) && sorted(table));

    /* add key=1094778882 */
    int *k100 = malloc(sizeof(int)); *k100 = 1094778882;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);
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
    int *k115 = malloc(sizeof(int)); *k115 = 167837696;
    alloc_keys[alloc_count++] = k115;
    treetable_add(table, k115, k115);
    assert(balanced(table) && sorted(table));

    /* add key=-67372037 */
    int *k120 = malloc(sizeof(int)); *k120 = -67372037;
    alloc_keys[alloc_count++] = k120;
    treetable_add(table, k120, k120);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-65274885 */
    search_key = -65274885;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=8443 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=-67372037 */
    int *k170 = malloc(sizeof(int)); *k170 = -67372037;
    alloc_keys[alloc_count++] = k170;
    treetable_add(table, k170, k170);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-83559429 */
    search_key = -83559429;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=88342528 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=0 */
    int *k215 = malloc(sizeof(int)); *k215 = 0;
    alloc_keys[alloc_count++] = k215;
    treetable_add(table, k215, k215);
    assert(balanced(table) && sorted(table));

    /* add key=536870912 */
    int *k220 = malloc(sizeof(int)); *k220 = 536870912;
    alloc_keys[alloc_count++] = k220;
    treetable_add(table, k220, k220);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-67436293 */
    search_key = -67436293;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67436544 */
    search_key = -67436544;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=16510715 */
    search_key = 16510715;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=1093288443 */
    search_key = 1093288443;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-774778624 */
    search_key = -774778624;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-774778415 */
    search_key = -774778415;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-774778388 */
    search_key = -774778388;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-774778443 */
    search_key = -774778443;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-2147429935 */
    search_key = -2147429935;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-774778415 */
    search_key = -774778415;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-67372079 */
    search_key = -67372079;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372068 */
    search_key = -67372068;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-79638028 */
    search_key = -79638028;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=1684339708 */
    search_key = 1684339708;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1097098340 */
    int *k310 = malloc(sizeof(int)); *k310 = 1097098340;
    alloc_keys[alloc_count++] = k310;
    treetable_add(table, k310, k310);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-67501824 */
    search_key = -67501824;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=83558651 */
    search_key = 83558651;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=18480123 */
    search_key = 18480123;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=335216891 */
    search_key = 335216891;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=536871162 */
    search_key = 536871162;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=-65536 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_greater_than key=-67372167 */
    search_key = -67372167;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=64507 */
    search_key = 64507;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-823198721 */
    search_key = -823198721;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=64275 */
    search_key = 64275;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1094795520 */
    int *k395 = malloc(sizeof(int)); *k395 = 1094795520;
    alloc_keys[alloc_count++] = k395;
    treetable_add(table, k395, k395);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-1136574143 */
    search_key = -1136574143;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=-67372037 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372288 */
    search_key = -67372288;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-83821573 */
    search_key = -83821573;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-50594822 */
    search_key = -50594822;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-68551685 */
    search_key = -68551685;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-79609558 */
    search_key = -79609558;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372036 */
    search_key = -67372036;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=1094795771 */
    search_key = 1094795771;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=469498689 */
    search_key = 469498689;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=454695707 */
    search_key = 454695707;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=454761243 */
    search_key = 454761243;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=454761243 */
    search_key = 454761243;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=10616859 */
    search_key = 10616859;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-256 */
    int *k505 = malloc(sizeof(int)); *k505 = -256;
    alloc_keys[alloc_count++] = k505;
    treetable_add(table, k505, k505);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=1094795771 */
    search_key = 1094795771;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-134217663 */
    search_key = -134217663;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k530 = malloc(sizeof(int)); *k530 = 0;
    alloc_keys[alloc_count++] = k530;
    treetable_add(table, k530, k530);
    assert(balanced(table) && sorted(table));

    /* add key=-1633812229 */
    int *k535 = malloc(sizeof(int)); *k535 = -1633812229;
    alloc_keys[alloc_count++] = k535;
    treetable_add(table, k535, k535);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=-1633771874 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=-67432448 */
    int *k545 = malloc(sizeof(int)); *k545 = -67432448;
    alloc_keys[alloc_count++] = k545;
    treetable_add(table, k545, k545);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=64256 */
    search_key = 64256;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-16777216 */
    int *k560 = malloc(sizeof(int)); *k560 = -16777216;
    alloc_keys[alloc_count++] = k560;
    treetable_add(table, k560, k560);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=9011199 */
    search_key = 9011199;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=37748736 */
    int *k570 = malloc(sizeof(int)); *k570 = 37748736;
    alloc_keys[alloc_count++] = k570;
    treetable_add(table, k570, k570);
    assert(balanced(table) && sorted(table));

    /* add key=-67372223 */
    int *k575 = malloc(sizeof(int)); *k575 = -67372223;
    alloc_keys[alloc_count++] = k575;
    treetable_add(table, k575, k575);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=1425800187 */
    search_key = 1425800187;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=8388704 */
    int *k590 = malloc(sizeof(int)); *k590 = 8388704;
    alloc_keys[alloc_count++] = k590;
    treetable_add(table, k590, k590);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094778895 */
    search_key = 1094778895;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=1094791233 */
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

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=16705 */
    search_key = 16705;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k630 = malloc(sizeof(int)); *k630 = 0;
    alloc_keys[alloc_count++] = k630;
    treetable_add(table, k630, k630);
    assert(balanced(table) && sorted(table));

    /* add key=-1644102912 */
    int *k635 = malloc(sizeof(int)); *k635 = -1644102912;
    alloc_keys[alloc_count++] = k635;
    treetable_add(table, k635, k635);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=-1633771874 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_first_key key=-82837504 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_greater_than key=-67372069 */
    search_key = -67372069;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372026 */
    search_key = -67372026;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
