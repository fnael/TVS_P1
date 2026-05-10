/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[23];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=1465341783 */
    int *k0 = malloc(sizeof(int)); *k0 = 1465341783;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* add key=-134129833 */
    int *k5 = malloc(sizeof(int)); *k5 = -134129833;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);

    /* add key=2561 */
    int *k10 = malloc(sizeof(int)); *k10 = 2561;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=1465334564 */
    int *k15 = malloc(sizeof(int)); *k15 = 1465334564;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* add key=167860055 */
    int *k20 = malloc(sizeof(int)); *k20 = 167860055;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* add key=-1 */
    int *k25 = malloc(sizeof(int)); *k25 = -1;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* get_greater_than key=-2031615173 */
    search_key = -2031615173;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=167787323 */
    search_key = 167787323;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=65 */
    search_key = 65;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1090519105 */
    int *k45 = malloc(sizeof(int)); *k45 = 1090519105;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);

    /* get key=16705 */
    search_key = 16705;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k55 = malloc(sizeof(int)); *k55 = 0;
    alloc_keys[alloc_count++] = k55;
    treetable_add(table, k55, k55);

    /* add key=0 */
    int *k60 = malloc(sizeof(int)); *k60 = 0;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);

    /* add key=0 */
    int *k65 = malloc(sizeof(int)); *k65 = 0;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);

    /* add key=-352321536 */
    int *k70 = malloc(sizeof(int)); *k70 = -352321536;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);

    /* get_greater_than key=5119 */
    search_key = 5119;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=0 */
    int *k80 = malloc(sizeof(int)); *k80 = 0;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);

    /* add key=65280 */
    int *k85 = malloc(sizeof(int)); *k85 = 65280;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);

    /* add key=989855760 */
    int *k90 = malloc(sizeof(int)); *k90 = 989855760;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);

    /* get_greater_than key=989870976 */
    search_key = 989870976;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=1094791739 */
    search_key = 1094791739;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=993737537 */
    search_key = 993737537;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
