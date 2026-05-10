/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[20];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=1465341783 */
    int *k0 = malloc(sizeof(int)); *k0 = 1465341783;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get_greater_than key=167860055 */
    search_key = 167860055;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=712458 */
    int *k10 = malloc(sizeof(int)); *k10 = 712458;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=-267779840 */
    int *k15 = malloc(sizeof(int)); *k15 = -267779840;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* add key=184549125 */
    int *k20 = malloc(sizeof(int)); *k20 = 184549125;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* add key=124672 */
    int *k25 = malloc(sizeof(int)); *k25 = 124672;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* add key=-62975 */
    int *k30 = malloc(sizeof(int)); *k30 = -62975;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);

    /* get_greater_than key=-1 */
    search_key = -1;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=176160767 */
    search_key = 176160767;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=59 */
    int *k45 = malloc(sizeof(int)); *k45 = 59;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);

    /* add key=1094795540 */
    int *k50 = malloc(sizeof(int)); *k50 = 1094795540;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);

    /* get key=486539264 */
    search_key = 486539264;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=670591 */
    int *k60 = malloc(sizeof(int)); *k60 = 670591;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);

    /* add key=2561 */
    int *k65 = malloc(sizeof(int)); *k65 = 2561;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);

    /* get key=10 */
    search_key = 10;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=201326592 */
    treetable_get_first_key(table, &out);

    /* add key=993722368 */
    int *k80 = malloc(sizeof(int)); *k80 = 993722368;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);

    /* get_greater_than key=993723368 */
    search_key = 993723368;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=993737526 */
    search_key = 993737526;
    treetable_get_greater_than(table, &search_key, &out);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
