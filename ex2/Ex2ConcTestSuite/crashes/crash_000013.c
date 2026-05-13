/* Property: CRASH: assertion violation or memory safety bug detected by ASAN. */
#include <assert.h>
#include <stdlib.h>
#include "../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[20];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=655364 */
    int *k0 = malloc(sizeof(int)); *k0 = 655364;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* add key=658176 */
    int *k5 = malloc(sizeof(int)); *k5 = 658176;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);

    /* add key=655620 */
    int *k10 = malloc(sizeof(int)); *k10 = 655620;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=268435456 */
    int *k15 = malloc(sizeof(int)); *k15 = 268435456;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* add key=327680 */
    int *k20 = malloc(sizeof(int)); *k20 = 327680;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* add key=2560 */
    int *k25 = malloc(sizeof(int)); *k25 = 2560;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* add key=657921 */
    int *k30 = malloc(sizeof(int)); *k30 = 657921;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);

    /* add key=2293760 */
    int *k35 = malloc(sizeof(int)); *k35 = 2293760;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);

    /* add key=2560 */
    int *k40 = malloc(sizeof(int)); *k40 = 2560;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);

    /* add key=2571 */
    int *k45 = malloc(sizeof(int)); *k45 = 2571;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);

    /* add key=2561 */
    int *k50 = malloc(sizeof(int)); *k50 = 2561;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);

    /* add key=68157440 */
    int *k55 = malloc(sizeof(int)); *k55 = 68157440;
    alloc_keys[alloc_count++] = k55;
    treetable_add(table, k55, k55);

    /* get_first_key key=1535 */
    treetable_get_first_key(table, &out);

    /* add key=262388 */
    int *k65 = malloc(sizeof(int)); *k65 = 262388;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);

    /* get_first_key key=184549376 */
    treetable_get_first_key(table, &out);

    /* get_first_key key=17039360 */
    treetable_get_first_key(table, &out);

    /* get_first_key key=0 */
    treetable_get_first_key(table, &out);

    /* add key=1040 */
    int *k85 = malloc(sizeof(int)); *k85 = 1040;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);

    /* get key=1526726656 */
    search_key = 1526726656;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
