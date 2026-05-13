/* Property: Successor monotonicity: get_greater_than must return strictly greater key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[41];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=167837696 */
    int *k0 = malloc(sizeof(int)); *k0 = 167837696;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);
    assert(balanced(table) && sorted(table));

    /* add key=-83883520 */
    int *k5 = malloc(sizeof(int)); *k5 = -83883520;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);
    assert(balanced(table) && sorted(table));

    /* add key=301202427 */
    int *k10 = malloc(sizeof(int)); *k10 = 301202427;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);
    assert(balanced(table) && sorted(table));

    /* add key=-67372037 */
    int *k15 = malloc(sizeof(int)); *k15 = -67372037;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);
    assert(balanced(table) && sorted(table));

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

    /* get key=167788865 */
    search_key = 167788865;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=169345024 */
    int *k180 = malloc(sizeof(int)); *k180 = 169345024;
    alloc_keys[alloc_count++] = k180;
    treetable_add(table, k180, k180);
    assert(balanced(table) && sorted(table));

    /* add key=-67372037 */
    int *k185 = malloc(sizeof(int)); *k185 = -67372037;
    alloc_keys[alloc_count++] = k185;
    treetable_add(table, k185, k185);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-66126853 */
    search_key = -66126853;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67380229 */
    search_key = -67380229;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
