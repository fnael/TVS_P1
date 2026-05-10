/* Property: CRASH: treetable_get_first_key on empty table causes SEGV inside tree_min because sentinel->left is NULL (never initialised). */
#include <assert.h>
#include <stdlib.h>
#include "../../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[5];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* get_greater_than key=1094795585 */
    search_key = 1094795585;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=10 */
    treetable_get_first_key(table, &out);

    /* get_greater_than key=10 */
    search_key = 10;
    treetable_get_greater_than(table, &search_key, &out);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
