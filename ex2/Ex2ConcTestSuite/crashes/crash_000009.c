/* Property: CRASH: assertion violation or memory safety bug detected by ASAN. */
#include <assert.h>
#include <stdlib.h>
#include "../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[7];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=0 */
    int *k0 = malloc(sizeof(int)); *k0 = 0;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* add key=655616 */
    int *k5 = malloc(sizeof(int)); *k5 = 655616;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);

    /* add key=655364 */
    int *k10 = malloc(sizeof(int)); *k10 = 655364;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=658176 */
    int *k15 = malloc(sizeof(int)); *k15 = 658176;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* add key=655620 */
    int *k20 = malloc(sizeof(int)); *k20 = 655620;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* add key=167837952 */
    int *k25 = malloc(sizeof(int)); *k25 = 167837952;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
