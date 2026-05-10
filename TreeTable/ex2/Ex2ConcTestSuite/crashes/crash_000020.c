/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[18];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=995579735 */
    int *k0 = malloc(sizeof(int)); *k0 = 995579735;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get_greater_than key=167860054 */
    search_key = 167860054;
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

    /* add key=71424 */
    int *k25 = malloc(sizeof(int)); *k25 = 71424;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* add key=14486017 */
    int *k30 = malloc(sizeof(int)); *k30 = 14486017;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);

    /* add key=993737531 */
    int *k35 = malloc(sizeof(int)); *k35 = 993737531;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);

    /* get_greater_than key=167837755 */
    search_key = 167837755;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=10 */
    int *k45 = malloc(sizeof(int)); *k45 = 10;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);

    /* add key=1094795540 */
    int *k50 = malloc(sizeof(int)); *k50 = 1094795540;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);

    /* get_first_key key=486539264 */
    treetable_get_first_key(table, &out);

    /* add key=993737599 */
    int *k60 = malloc(sizeof(int)); *k60 = 993737599;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);

    /* get_greater_than key=993737531 */
    search_key = 993737531;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=-471604253 */
    int *k70 = malloc(sizeof(int)); *k70 = -471604253;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);

    /* get_greater_than key=-471604253 */
    search_key = -471604253;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=993780707 */
    search_key = 993780707;
    treetable_get_greater_than(table, &search_key, &out);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
