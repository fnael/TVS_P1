/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[10];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=17432842 */
    int *k0 = malloc(sizeof(int)); *k0 = 17432842;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get_first_key key=0 */
    treetable_get_first_key(table, &out);

    /* add key=-553648128 */
    int *k10 = malloc(sizeof(int)); *k10 = -553648128;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=0 */
    int *k15 = malloc(sizeof(int)); *k15 = 0;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* add key=655616 */
    int *k20 = malloc(sizeof(int)); *k20 = 655616;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* add key=2560 */
    int *k25 = malloc(sizeof(int)); *k25 = 2560;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* get_greater_than key=0 */
    search_key = 0;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=0 */
    int *k35 = malloc(sizeof(int)); *k35 = 0;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);

    /* add key=16777216 */
    int *k40 = malloc(sizeof(int)); *k40 = 16777216;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
