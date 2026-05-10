/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[4];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=167772170 */
    int *k0 = malloc(sizeof(int)); *k0 = 167772170;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* add key=167837696 */
    int *k5 = malloc(sizeof(int)); *k5 = 167837696;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);

    /* get_greater_than key=167837696 */
    search_key = 167837696;
    treetable_get_greater_than(table, &search_key, &out);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
