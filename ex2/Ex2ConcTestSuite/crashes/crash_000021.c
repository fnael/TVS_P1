/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[27];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k5 = malloc(sizeof(int)); *k5 = 0;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);

    /* add key=469763328 */
    int *k10 = malloc(sizeof(int)); *k10 = 469763328;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=2686976 */
    int *k15 = malloc(sizeof(int)); *k15 = 2686976;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* get_first_key key=167902976 */
    treetable_get_first_key(table, &out);

    /* add key=1091174400 */
    int *k25 = malloc(sizeof(int)); *k25 = 1091174400;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=37830977 */
    search_key = 37830977;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=16973824 */
    int *k40 = malloc(sizeof(int)); *k40 = 16973824;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);

    /* add key=2561 */
    int *k45 = malloc(sizeof(int)); *k45 = 2561;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);

    /* add key=16777475 */
    int *k50 = malloc(sizeof(int)); *k50 = 16777475;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);

    /* add key=2560 */
    int *k55 = malloc(sizeof(int)); *k55 = 2560;
    alloc_keys[alloc_count++] = k55;
    treetable_add(table, k55, k55);

    /* add key=16973824 */
    int *k60 = malloc(sizeof(int)); *k60 = 16973824;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);

    /* add key=167772161 */
    int *k65 = malloc(sizeof(int)); *k65 = 167772161;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);

    /* add key=0 */
    int *k70 = malloc(sizeof(int)); *k70 = 0;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);

    /* add key=184549376 */
    int *k75 = malloc(sizeof(int)); *k75 = 184549376;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);

    /* add key=0 */
    int *k80 = malloc(sizeof(int)); *k80 = 0;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);

    /* add key=0 */
    int *k85 = malloc(sizeof(int)); *k85 = 0;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);

    /* add key=0 */
    int *k90 = malloc(sizeof(int)); *k90 = 0;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);

    /* get_greater_than key=0 */
    search_key = 0;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=0 */
    int *k100 = malloc(sizeof(int)); *k100 = 0;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);

    /* add key=327680 */
    int *k105 = malloc(sizeof(int)); *k105 = 327680;
    alloc_keys[alloc_count++] = k105;
    treetable_add(table, k105, k105);

    /* add key=655401 */
    int *k110 = malloc(sizeof(int)); *k110 = 655401;
    alloc_keys[alloc_count++] = k110;
    treetable_add(table, k110, k110);

    /* get_greater_than key=2561 */
    search_key = 2561;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=16777226 */
    int *k120 = malloc(sizeof(int)); *k120 = 16777226;
    alloc_keys[alloc_count++] = k120;
    treetable_add(table, k120, k120);

    /* get_first_key key=0 */
    treetable_get_first_key(table, &out);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
