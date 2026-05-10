/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[6];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* get_greater_than key=168430316 */
    search_key = 168430316;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_first_key key=168430090 */
    treetable_get_first_key(table, &out);

    /* get_first_key key=168430090 */
    treetable_get_first_key(table, &out);

    /* get_first_key key=168430090 */
    treetable_get_first_key(table, &out);

    /* add key=167837696 */
    int *k20 = malloc(sizeof(int)); *k20 = 167837696;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
