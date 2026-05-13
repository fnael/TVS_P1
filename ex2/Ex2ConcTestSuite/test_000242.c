/* Property: Empty table handling: read operations on empty tree must not crash */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[130];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-808464433 */
    search_key = -808464433;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
