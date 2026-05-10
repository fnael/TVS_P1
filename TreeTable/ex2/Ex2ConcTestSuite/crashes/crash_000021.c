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

    /* add key=5723991 */
    int *k0 = malloc(sizeof(int)); *k0 = 5723991;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get key=168427530 */
    search_key = 168427530;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=2818048 */
    int *k10 = malloc(sizeof(int)); *k10 = 2818048;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=2304 */
    int *k15 = malloc(sizeof(int)); *k15 = 2304;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* add key=5 */
    int *k20 = malloc(sizeof(int)); *k20 = 5;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* add key=1459617792 */
    int *k25 = malloc(sizeof(int)); *k25 = 1459617792;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* get_greater_than key=167837783 */
    search_key = 167837783;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=10 */
    int *k35 = malloc(sizeof(int)); *k35 = 10;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);

    /* add key=1094795540 */
    int *k40 = malloc(sizeof(int)); *k40 = 1094795540;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);

    /* get key=0 */
    search_key = 0;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=335544320 */
    int *k50 = malloc(sizeof(int)); *k50 = 335544320;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);

    /* get key=606529 */
    search_key = 606529;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1886416896 */
    int *k60 = malloc(sizeof(int)); *k60 = 1886416896;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);

    /* add key=67108976 */
    int *k65 = malloc(sizeof(int)); *k65 = 67108976;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);

    /* add key=993737531 */
    int *k70 = malloc(sizeof(int)); *k70 = 993737531;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);

    /* get_greater_than key=22501207 */
    search_key = 22501207;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_first_key key=335544320 */
    treetable_get_first_key(table, &out);

    /* add key=589824 */
    int *k85 = malloc(sizeof(int)); *k85 = 589824;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);

    /* add key=1094795264 */
    int *k90 = malloc(sizeof(int)); *k90 = 1094795264;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);

    /* get key=0 */
    search_key = 0;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=993737472 */
    int *k100 = malloc(sizeof(int)); *k100 = 993737472;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
