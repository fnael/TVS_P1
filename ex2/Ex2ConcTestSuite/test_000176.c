/* Property: Successor monotonicity: get_greater_than must return strictly greater key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[20];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* get_greater_than key=-943208505 */
    search_key = -943208505;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-943208505 */
    search_key = -943208505;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-943208505 */
    search_key = -943208505;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-943208505 */
    search_key = -943208505;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-943208505 */
    search_key = -943208505;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-943208505 */
    search_key = -943208505;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-943208505 */
    search_key = -943208505;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-943208505 */
    search_key = -943208505;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-943208505 */
    search_key = -943208505;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-943208505 */
    search_key = -943208505;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-943208505 */
    search_key = -943208505;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-943208505 */
    search_key = -943208505;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-943208505 */
    search_key = -943208505;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-943208505 */
    search_key = -943208505;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-943208505 */
    search_key = -943208505;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=2560 */
    search_key = 2560;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=2561 */
    int *k80 = malloc(sizeof(int)); *k80 = 2561;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=2560 */
    search_key = 2560;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=2616 */
    int *k90 = malloc(sizeof(int)); *k90 = 2616;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);
    assert(balanced(table) && sorted(table));

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
