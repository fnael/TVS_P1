/* Property: CRASH: treetable_get_first_key on empty table causes SEGV inside tree_min because sentinel->left is NULL (never initialised). */
#include <assert.h>
#include <stdlib.h>
#include "../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[3];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* get_first_key key=0 */
    treetable_get_first_key(table, &out);

    /* get key=0 */
    search_key = 0;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
