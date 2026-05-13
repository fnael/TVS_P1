/* Property: get_first_key correctness: must return minimum key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[75];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=-16635 */
    int *k0 = malloc(sizeof(int)); *k0 = -16635;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=0 */
    search_key = 0;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k10 = malloc(sizeof(int)); *k10 = 0;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);
    assert(balanced(table) && sorted(table));

    /* add key=2586 */
    int *k15 = malloc(sizeof(int)); *k15 = 2586;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);
    assert(balanced(table) && sorted(table));

    /* add key=-1978630844 */
    int *k20 = malloc(sizeof(int)); *k20 = -1978630844;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);
    assert(balanced(table) && sorted(table));

    /* add key=33554432 */
    int *k25 = malloc(sizeof(int)); *k25 = 33554432;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);
    assert(balanced(table) && sorted(table));

    /* add key=2135162880 */
    int *k30 = malloc(sizeof(int)); *k30 = 2135162880;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);
    assert(balanced(table) && sorted(table));

    /* add key=2186 */
    int *k35 = malloc(sizeof(int)); *k35 = 2186;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);
    assert(balanced(table) && sorted(table));

    /* add key=1128333314 */
    int *k40 = malloc(sizeof(int)); *k40 = 1128333314;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);
    assert(balanced(table) && sorted(table));

    /* get key=826360129 */
    search_key = 826360129;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=589840 */
    search_key = 589840;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=182781440 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=8355840 */
    int *k60 = malloc(sizeof(int)); *k60 = 8355840;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);
    assert(balanced(table) && sorted(table));

    /* add key=32512 */
    int *k65 = malloc(sizeof(int)); *k65 = 32512;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k70 = malloc(sizeof(int)); *k70 = 0;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);
    assert(balanced(table) && sorted(table));

    /* add key=58111 */
    int *k75 = malloc(sizeof(int)); *k75 = 58111;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k80 = malloc(sizeof(int)); *k80 = 0;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);
    assert(balanced(table) && sorted(table));

    /* get key=1094795713 */
    search_key = 1094795713;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=33571137 */
    search_key = 33571137;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=35520512 */
    int *k100 = malloc(sizeof(int)); *k100 = 35520512;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=704774658 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_first_key key=33686018 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_first_key key=1094795778 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=1113211201 */
    search_key = 1113211201;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=0 */
    search_key = 0;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=4274241 */
    search_key = 4274241;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1140883200 */
    int *k140 = malloc(sizeof(int)); *k140 = 1140883200;
    alloc_keys[alloc_count++] = k140;
    treetable_add(table, k140, k140);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=35072 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=127 */
    int *k150 = malloc(sizeof(int)); *k150 = 127;
    alloc_keys[alloc_count++] = k150;
    treetable_add(table, k150, k150);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=0 */
    search_key = 0;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-16777216 */
    int *k160 = malloc(sizeof(int)); *k160 = -16777216;
    alloc_keys[alloc_count++] = k160;
    treetable_add(table, k160, k160);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=0 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=1593854976 */
    int *k170 = malloc(sizeof(int)); *k170 = 1593854976;
    alloc_keys[alloc_count++] = k170;
    treetable_add(table, k170, k170);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1065264 */
    search_key = 1065264;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=117441097 */
    search_key = 117441097;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1593835485 */
    search_key = 1593835485;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1065264 */
    search_key = 1065264;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=117441097 */
    search_key = 117441097;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1090535434 */
    search_key = 1090535434;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=2561 */
    int *k215 = malloc(sizeof(int)); *k215 = 2561;
    alloc_keys[alloc_count++] = k215;
    treetable_add(table, k215, k215);
    assert(balanced(table) && sorted(table));

    /* add key=1094779136 */
    int *k220 = malloc(sizeof(int)); *k220 = 1094779136;
    alloc_keys[alloc_count++] = k220;
    treetable_add(table, k220, k220);
    assert(balanced(table) && sorted(table));

    /* get key=-200671488 */
    search_key = -200671488;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1929 */
    int *k230 = malloc(sizeof(int)); *k230 = 1929;
    alloc_keys[alloc_count++] = k230;
    treetable_add(table, k230, k230);
    assert(balanced(table) && sorted(table));

    /* add key=1090519552 */
    int *k235 = malloc(sizeof(int)); *k235 = 1090519552;
    alloc_keys[alloc_count++] = k235;
    treetable_add(table, k235, k235);
    assert(balanced(table) && sorted(table));

    /* get key=1094785857 */
    search_key = 1094785857;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-64477 */
    search_key = -64477;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=139264 */
    int *k250 = malloc(sizeof(int)); *k250 = 139264;
    alloc_keys[alloc_count++] = k250;
    treetable_add(table, k250, k250);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=1140850688 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_greater_than key=131072 */
    search_key = 131072;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1094800468 */
    int *k270 = malloc(sizeof(int)); *k270 = 1094800468;
    alloc_keys[alloc_count++] = k270;
    treetable_add(table, k270, k270);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=1094795585 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=1413562970 */
    search_key = 1413562970;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1414812756 */
    int *k290 = malloc(sizeof(int)); *k290 = 1414812756;
    alloc_keys[alloc_count++] = k290;
    treetable_add(table, k290, k290);
    assert(balanced(table) && sorted(table));

    /* add key=167788884 */
    int *k295 = malloc(sizeof(int)); *k295 = 167788884;
    alloc_keys[alloc_count++] = k295;
    treetable_add(table, k295, k295);
    assert(balanced(table) && sorted(table));

    /* add key=419495936 */
    int *k300 = malloc(sizeof(int)); *k300 = 419495936;
    alloc_keys[alloc_count++] = k300;
    treetable_add(table, k300, k300);
    assert(balanced(table) && sorted(table));

    /* add key=625213440 */
    int *k305 = malloc(sizeof(int)); *k305 = 625213440;
    alloc_keys[alloc_count++] = k305;
    treetable_add(table, k305, k305);
    assert(balanced(table) && sorted(table));

    /* add key=137 */
    int *k310 = malloc(sizeof(int)); *k310 = 137;
    alloc_keys[alloc_count++] = k310;
    treetable_add(table, k310, k310);
    assert(balanced(table) && sorted(table));

    /* add key=33573120 */
    int *k315 = malloc(sizeof(int)); *k315 = 33573120;
    alloc_keys[alloc_count++] = k315;
    treetable_add(table, k315, k315);
    assert(balanced(table) && sorted(table));

    /* add key=1094795585 */
    int *k320 = malloc(sizeof(int)); *k320 = 1094795585;
    alloc_keys[alloc_count++] = k320;
    treetable_add(table, k320, k320);
    assert(balanced(table) && sorted(table));

    /* get key=587219265 */
    search_key = 587219265;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1140850943 */
    int *k330 = malloc(sizeof(int)); *k330 = 1140850943;
    alloc_keys[alloc_count++] = k330;
    treetable_add(table, k330, k330);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=559616 */
    search_key = 559616;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1090519552 */
    int *k340 = malloc(sizeof(int)); *k340 = 1090519552;
    alloc_keys[alloc_count++] = k340;
    treetable_add(table, k340, k340);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=1094795585 */
    search_key = 1094795585;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=150999105 */
    search_key = 150999105;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-452591614 */
    int *k355 = malloc(sizeof(int)); *k355 = -452591614;
    alloc_keys[alloc_count++] = k355;
    treetable_add(table, k355, k355);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=-8388608 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=10485760 */
    int *k365 = malloc(sizeof(int)); *k365 = 10485760;
    alloc_keys[alloc_count++] = k365;
    treetable_add(table, k365, k365);
    assert(balanced(table) && sorted(table));

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
