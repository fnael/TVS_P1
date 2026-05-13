/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[14];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=6 */
    int *k0 = malloc(sizeof(int)); *k0 = 6;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* add key=-33554432 */
    int *k5 = malloc(sizeof(int)); *k5 = -33554432;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);

    /* add key=0 */
    int *k10 = malloc(sizeof(int)); *k10 = 0;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=31 */
    int *k15 = malloc(sizeof(int)); *k15 = 31;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* add key=1073741888 */
    int *k20 = malloc(sizeof(int)); *k20 = 1073741888;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* add key=0 */
    int *k25 = malloc(sizeof(int)); *k25 = 0;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* get_greater_than key=0 */
    search_key = 0;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=25088 */
    search_key = 25088;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k40 = malloc(sizeof(int)); *k40 = 0;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);

    /* get_greater_than key=16711680 */
    search_key = 16711680;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=-1 */
    search_key = -1;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=65535 */
    search_key = 65535;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=4194304 */
    int *k60 = malloc(sizeof(int)); *k60 = 4194304;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
