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

    /* add key=4456448 */
    int *k0 = malloc(sizeof(int)); *k0 = 4456448;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* add key=2570 */
    int *k5 = malloc(sizeof(int)); *k5 = 2570;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);

    /* add key=5121 */
    int *k10 = malloc(sizeof(int)); *k10 = 5121;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* get_greater_than key=0 */
    search_key = 0;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=657920 */
    int *k20 = malloc(sizeof(int)); *k20 = 657920;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* add key=1310976 */
    int *k25 = malloc(sizeof(int)); *k25 = 1310976;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* add key=655615 */
    int *k30 = malloc(sizeof(int)); *k30 = 655615;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);

    /* add key=0 */
    int *k35 = malloc(sizeof(int)); *k35 = 0;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);

    /* get_first_key key=10 */
    treetable_get_first_key(table, &out);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
