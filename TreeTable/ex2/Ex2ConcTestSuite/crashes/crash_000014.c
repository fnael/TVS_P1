/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[9];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=2570 */
    int *k0 = malloc(sizeof(int)); *k0 = 2570;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* add key=167774721 */
    int *k5 = malloc(sizeof(int)); *k5 = 167774721;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);

    /* add key=57088 */
    int *k10 = malloc(sizeof(int)); *k10 = 57088;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=-1785397248 */
    int *k15 = malloc(sizeof(int)); *k15 = -1785397248;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* get key=-1785358955 */
    search_key = -1785358955;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=2560 */
    int *k25 = malloc(sizeof(int)); *k25 = 2560;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* get_greater_than key=0 */
    search_key = 0;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=2561 */
    int *k35 = malloc(sizeof(int)); *k35 = 2561;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
