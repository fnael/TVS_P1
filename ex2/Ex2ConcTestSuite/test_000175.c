/* Property: Successor monotonicity: get_greater_than must return strictly greater key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[37];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=167837696 */
    int *k0 = malloc(sizeof(int)); *k0 = 167837696;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);
    assert(balanced(table) && sorted(table));

    /* add key=2560 */
    int *k5 = malloc(sizeof(int)); *k5 = 2560;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);
    assert(balanced(table) && sorted(table));

    /* add key=255982587 */
    int *k10 = malloc(sizeof(int)); *k10 = 255982587;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);
    assert(balanced(table) && sorted(table));

    /* add key=-83823607 */
    int *k15 = malloc(sizeof(int)); *k15 = -83823607;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=284949499 */
    search_key = 284949499;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=269488144 */
    int *k30 = malloc(sizeof(int)); *k30 = 269488144;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);
    assert(balanced(table) && sorted(table));

    /* add key=269488144 */
    int *k35 = malloc(sizeof(int)); *k35 = 269488144;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);
    assert(balanced(table) && sorted(table));

    /* add key=269488144 */
    int *k40 = malloc(sizeof(int)); *k40 = 269488144;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);
    assert(balanced(table) && sorted(table));

    /* add key=269488144 */
    int *k45 = malloc(sizeof(int)); *k45 = 269488144;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);
    assert(balanced(table) && sorted(table));

    /* add key=-67372037 */
    int *k50 = malloc(sizeof(int)); *k50 = -67372037;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
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

    /* get key=255934785 */
    search_key = 255934785;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=62473 */
    int *k75 = malloc(sizeof(int)); *k75 = 62473;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);
    assert(balanced(table) && sorted(table));

    /* add key=2586 */
    int *k80 = malloc(sizeof(int)); *k80 = 2586;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);
    assert(balanced(table) && sorted(table));

    /* add key=-1996486076 */
    int *k85 = malloc(sizeof(int)); *k85 = -1996486076;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);
    assert(balanced(table) && sorted(table));

    /* add key=-83879424 */
    int *k90 = malloc(sizeof(int)); *k90 = -83879424;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
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

    /* get_greater_than key=-67372037 */
    search_key = -67372037;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-67367173 */
    search_key = -67367173;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=167902171 */
    search_key = 167902171;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=2560 */
    int *k125 = malloc(sizeof(int)); *k125 = 2560;
    alloc_keys[alloc_count++] = k125;
    treetable_add(table, k125, k125);
    assert(balanced(table) && sorted(table));

    /* add key=-100926469 */
    int *k130 = malloc(sizeof(int)); *k130 = -100926469;
    alloc_keys[alloc_count++] = k130;
    treetable_add(table, k130, k130);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-66782213 */
    search_key = -66782213;
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

    /* get_greater_than key=-404232217 */
    search_key = -404232217;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-404232217 */
    search_key = -404232217;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-404232217 */
    search_key = -404232217;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-404232217 */
    search_key = -404232217;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-404232217 */
    search_key = -404232217;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=169997568 */
    search_key = 169997568;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
