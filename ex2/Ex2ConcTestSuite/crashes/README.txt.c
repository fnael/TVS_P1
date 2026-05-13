/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[108];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* get_greater_than key=1634561391 */
    search_key = 1634561391;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_first_key key=1768693860 */
    treetable_get_first_key(table, &out);

    /* get_first_key key=1937055845 */
    treetable_get_first_key(table, &out);

    /* get key=1869881444 */
    search_key = 1869881444;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1684957542 */
    int *k20 = malloc(sizeof(int)); *k20 = 1684957542;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* add key=1936287860 */
    int *k25 = malloc(sizeof(int)); *k25 = 1936287860;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* add key=1935766115 */
    int *k30 = malloc(sizeof(int)); *k30 = 1935766115;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);

    /* add key=1628047930 */
    int *k35 = malloc(sizeof(int)); *k35 = 1628047930;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);

    /* get_first_key key=1969630572 */
    treetable_get_first_key(table, &out);

    /* get_first_key key=1764565114 */
    treetable_get_first_key(table, &out);

    /* add key=1684366707 */
    int *k50 = malloc(sizeof(int)); *k50 = 1684366707;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);

    /* get_greater_than key=544156960 */
    search_key = 544156960;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=1970304117 */
    search_key = 1970304117;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=757932147 */
    int *k65 = malloc(sizeof(int)); *k65 = 757932147;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);

    /* add key=1634217774 */
    int *k70 = malloc(sizeof(int)); *k70 = 1634217774;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);

    /* get_first_key key=1936942446 */
    treetable_get_first_key(table, &out);

    /* get_greater_than key=2054845798 */
    search_key = 2054845798;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_first_key key=543574282 */
    treetable_get_first_key(table, &out);

    /* get key=1663071599 */
    search_key = 1663071599;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=544483182 */
    search_key = 544483182;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=1869770853 */
    treetable_get_first_key(table, &out);

    /* add key=543515509 */
    int *k105 = malloc(sizeof(int)); *k105 = 543515509;
    alloc_keys[alloc_count++] = k105;
    treetable_add(table, k105, k105);

    /* get key=1735746080 */
    search_key = 1735746080;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1937012079 */
    int *k115 = malloc(sizeof(int)); *k115 = 1937012079;
    alloc_keys[alloc_count++] = k115;
    treetable_add(table, k115, k115);

    /* get key=1864394084 */
    search_key = 1864394084;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=1818648864 */
    treetable_get_first_key(table, &out);

    /* get key=2054845798 */
    search_key = 2054845798;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=543515168 */
    int *k135 = malloc(sizeof(int)); *k135 = 543515168;
    alloc_keys[alloc_count++] = k135;
    treetable_add(table, k135, k135);

    /* get_greater_than key=543519349 */
    search_key = 543519349;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=1702043759 */
    int *k145 = malloc(sizeof(int)); *k145 = 1702043759;
    alloc_keys[alloc_count++] = k145;
    treetable_add(table, k145, k145);

    /* add key=1701344288 */
    int *k150 = malloc(sizeof(int)); *k150 = 1701344288;
    alloc_keys[alloc_count++] = k150;
    treetable_add(table, k150, k150);

    /* add key=1701667187 */
    int *k155 = malloc(sizeof(int)); *k155 = 1701667187;
    alloc_keys[alloc_count++] = k155;
    treetable_add(table, k155, k155);

    /* get_first_key key=1869440365 */
    treetable_get_first_key(table, &out);

    /* get_first_key key=1768693881 */
    treetable_get_first_key(table, &out);

    /* get key=539915369 */
    search_key = 539915369;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1814062440 */
    int *k175 = malloc(sizeof(int)); *k175 = 1814062440;
    alloc_keys[alloc_count++] = k175;
    treetable_add(table, k175, k175);

    /* get key=544500077 */
    search_key = 544500077;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=543450483 */
    search_key = 543450483;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=1948283503 */
    treetable_get_first_key(table, &out);

    /* add key=1713402729 */
    int *k195 = malloc(sizeof(int)); *k195 = 1713402729;
    alloc_keys[alloc_count++] = k195;
    treetable_add(table, k195, k195);

    /* get key=1852406394 */
    search_key = 1852406394;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=1936028448 */
    search_key = 1936028448;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=544108393 */
    search_key = 544108393;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=807433057 */
    search_key = 807433057;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=168439362 */
    int *k220 = malloc(sizeof(int)); *k220 = 168439362;
    alloc_keys[alloc_count++] = k220;
    treetable_add(table, k220, k220);

    /* get_first_key key=543450469 */
    treetable_get_first_key(table, &out);

    /* get key=1869575200 */
    search_key = 1869575200;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=544175136 */
    int *k235 = malloc(sizeof(int)); *k235 = 544175136;
    alloc_keys[alloc_count++] = k235;
    treetable_add(table, k235, k235);

    /* get key=1835626089 */
    search_key = 1835626089;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1948280186 */
    search_key = 1948280186;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1663071347 */
    search_key = 1663071347;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=544433523 */
    search_key = 544433523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=1919903333 */
    treetable_get_first_key(table, &out);

    /* get key=1986947360 */
    search_key = 1986947360;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1734964339 */
    search_key = 1734964339;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1735289204 */
    search_key = 1735289204;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=543516788 */
    int *k280 = malloc(sizeof(int)); *k280 = 543516788;
    alloc_keys[alloc_count++] = k280;
    treetable_add(table, k280, k280);

    /* get_greater_than key=1752392050 */
    search_key = 1752392050;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=1919885427 */
    search_key = 1919885427;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1684956531 */
    int *k295 = malloc(sizeof(int)); *k295 = 1684956531;
    alloc_keys[alloc_count++] = k295;
    treetable_add(table, k295, k295);

    /* get key=1946838894 */
    search_key = 1946838894;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1948282213 */
    int *k305 = malloc(sizeof(int)); *k305 = 1948282213;
    alloc_keys[alloc_count++] = k305;
    treetable_add(table, k305, k305);

    /* get_greater_than key=1981833504 */
    search_key = 1981833504;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=1919902830 */
    search_key = 1919902830;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=1701331744 */
    search_key = 1701331744;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=1970217067 */
    search_key = 1970217067;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=1701344288 */
    int *k330 = malloc(sizeof(int)); *k330 = 1701344288;
    alloc_keys[alloc_count++] = k330;
    treetable_add(table, k330, k330);

    /* add key=762078817 */
    int *k335 = malloc(sizeof(int)); *k335 = 762078817;
    alloc_keys[alloc_count++] = k335;
    treetable_add(table, k335, k335);

    /* add key=544106861 */
    int *k340 = malloc(sizeof(int)); *k340 = 544106861;
    alloc_keys[alloc_count++] = k340;
    treetable_add(table, k340, k340);

    /* add key=544498024 */
    int *k345 = malloc(sizeof(int)); *k345 = 544498024;
    alloc_keys[alloc_count++] = k345;
    treetable_add(table, k345, k345);

    /* get_greater_than key=1936026991 */
    search_key = 1936026991;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=1752459639 */
    int *k355 = malloc(sizeof(int)); *k355 = 1752459639;
    alloc_keys[alloc_count++] = k355;
    treetable_add(table, k355, k355);

    /* add key=543516788 */
    int *k360 = malloc(sizeof(int)); *k360 = 543516788;
    alloc_keys[alloc_count++] = k360;
    treetable_add(table, k360, k360);

    /* get_first_key key=1702525557 */
    treetable_get_first_key(table, &out);

    /* get_first_key key=1175063073 */
    treetable_get_first_key(table, &out);

    /* get_greater_than key=543452789 */
    search_key = 543452789;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=1663072622 */
    search_key = 1663072622;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=1646292079 */
    search_key = 1646292079;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=1763734375 */
    search_key = 1763734375;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=1701867296 */
    treetable_get_first_key(table, &out);

    /* get_first_key key=1970238253 */
    treetable_get_first_key(table, &out);

    /* get_first_key key=1948280163 */
    treetable_get_first_key(table, &out);

    /* get_greater_than key=544435311 */
    search_key = 544435311;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=1735289203 */
    search_key = 1735289203;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=762078817 */
    int *k420 = malloc(sizeof(int)); *k420 = 762078817;
    alloc_keys[alloc_count++] = k420;
    treetable_add(table, k420, k420);

    /* get_first_key key=1064991349 */
    treetable_get_first_key(table, &out);

    /* add key=2032166473 */
    int *k430 = malloc(sizeof(int)); *k430 = 2032166473;
    alloc_keys[alloc_count++] = k430;
    treetable_add(table, k430, k430);

    /* get key=1881156723 */
    search_key = 1881156723;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1702060389 */
    int *k440 = malloc(sizeof(int)); *k440 = 1702060389;
    alloc_keys[alloc_count++] = k440;
    treetable_add(table, k440, k440);

    /* add key=1953722224 */
    int *k445 = malloc(sizeof(int)); *k445 = 1953722224;
    alloc_keys[alloc_count++] = k445;
    treetable_add(table, k445, k445);

    /* get_first_key key=1746956148 */
    treetable_get_first_key(table, &out);

    /* add key=980643956 */
    int *k455 = malloc(sizeof(int)); *k455 = 980643956;
    alloc_keys[alloc_count++] = k455;
    treetable_add(table, k455, k455);

    /* get_greater_than key=1953064751 */
    search_key = 1953064751;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=1663984245 */
    int *k465 = malloc(sizeof(int)); *k465 = 1663984245;
    alloc_keys[alloc_count++] = k465;
    treetable_add(table, k465, k465);

    /* get_greater_than key=1178677101 */
    search_key = 1178677101;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=1937075312 */
    int *k475 = malloc(sizeof(int)); *k475 = 1937075312;
    alloc_keys[alloc_count++] = k475;
    treetable_add(table, k475, k475);

    /* add key=796095852 */
    int *k480 = malloc(sizeof(int)); *k480 = 796095852;
    alloc_keys[alloc_count++] = k480;
    treetable_add(table, k480, k480);

    /* get key=1819298886 */
    search_key = 1819298886;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1970040947 */
    search_key = 1970040947;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=1936943407 */
    search_key = 1936943407;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=841970533 */
    search_key = 841970533;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1852776502 */
    int *k505 = malloc(sizeof(int)); *k505 = 1852776502;
    alloc_keys[alloc_count++] = k505;
    treetable_add(table, k505, k505);

    /* get_greater_than key=1752440933 */
    search_key = 1752440933;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=1936943392 */
    search_key = 1936943392;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=537555813 */
    search_key = 537555813;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1713399154 */
    search_key = 1713399154;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=543450488 */
    search_key = 543450488;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
