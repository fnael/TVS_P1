/* Property: Successor monotonicity: get_greater_than must return strictly greater key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[43];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67371781 */
    search_key = -67371781;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-83821573 */
    search_key = -83821573;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-82117637 */
    search_key = -82117637;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-66779909 */
    search_key = -66779909;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67437573 */
    search_key = -67437573;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=2094726148 */
    search_key = 2094726148;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-68224005 */
    search_key = -68224005;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67371781 */
    search_key = -67371781;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=64507 */
    search_key = 64507;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-68224001 */
    search_key = -68224001;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67371781 */
    search_key = -67371781;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-83821573 */
    search_key = -83821573;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-50594821 */
    search_key = -50594821;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=454761467 */
    search_key = 454761467;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=454761242 */
    search_key = 454761242;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=454761243 */
    search_key = 454761243;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=454761243 */
    search_key = 454761243;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=10 */
    int *k175 = malloc(sizeof(int)); *k175 = 10;
    alloc_keys[alloc_count++] = k175;
    treetable_add(table, k175, k175);
    assert(balanced(table) && sorted(table));

    /* add key=-67436534 */
    int *k180 = malloc(sizeof(int)); *k180 = -67436534;
    alloc_keys[alloc_count++] = k180;
    treetable_add(table, k180, k180);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-83559429 */
    search_key = -83559429;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-66126853 */
    search_key = -66126853;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67380229 */
    search_key = -67380229;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=719867 */
    search_key = 719867;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
