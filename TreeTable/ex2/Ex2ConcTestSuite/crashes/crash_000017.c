/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[22];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=712458 */
    int *k0 = malloc(sizeof(int)); *k0 = 712458;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* add key=-267779840 */
    int *k5 = malloc(sizeof(int)); *k5 = -267779840;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);

    /* add key=184549125 */
    int *k10 = malloc(sizeof(int)); *k10 = 184549125;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=65536 */
    int *k15 = malloc(sizeof(int)); *k15 = 65536;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* add key=2561 */
    int *k20 = malloc(sizeof(int)); *k20 = 2561;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* add key=16777216 */
    int *k25 = malloc(sizeof(int)); *k25 = 16777216;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* add key=721152 */
    int *k30 = malloc(sizeof(int)); *k30 = 721152;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);

    /* add key=0 */
    int *k35 = malloc(sizeof(int)); *k35 = 0;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);

    /* add key=30 */
    int *k40 = malloc(sizeof(int)); *k40 = 30;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);

    /* add key=0 */
    int *k45 = malloc(sizeof(int)); *k45 = 0;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);

    /* get_greater_than key=0 */
    search_key = 0;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=1966080 */
    int *k55 = malloc(sizeof(int)); *k55 = 1966080;
    alloc_keys[alloc_count++] = k55;
    treetable_add(table, k55, k55);

    /* add key=-1835008 */
    int *k60 = malloc(sizeof(int)); *k60 = -1835008;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);

    /* get_greater_than key=255 */
    search_key = 255;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=-16777216 */
    search_key = -16777216;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=65407 */
    search_key = 65407;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=0 */
    int *k80 = malloc(sizeof(int)); *k80 = 0;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);

    /* add key=1 */
    int *k85 = malloc(sizeof(int)); *k85 = 1;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);

    /* add key=0 */
    int *k90 = malloc(sizeof(int)); *k90 = 0;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);

    /* add key=0 */
    int *k95 = malloc(sizeof(int)); *k95 = 0;
    alloc_keys[alloc_count++] = k95;
    treetable_add(table, k95, k95);

    /* add key=256 */
    int *k100 = malloc(sizeof(int)); *k100 = 256;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
