/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[9];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=10 */
    int *k0 = malloc(sizeof(int)); *k0 = 10;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get key=-1549556829 */
    search_key = -1549556829;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1549556829 */
    search_key = -1549556829;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=-1549556829 */
    search_key = -1549556829;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=-1549556829 */
    search_key = -1549556829;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=-1549556829 */
    search_key = -1549556829;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=10 */
    search_key = 10;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=266 */
    search_key = 266;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
