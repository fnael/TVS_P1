/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[11];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=0 */
    int *k0 = malloc(sizeof(int)); *k0 = 0;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get key=67108874 */
    search_key = 67108874;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=10 */
    int *k10 = malloc(sizeof(int)); *k10 = 10;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* get_greater_than key=10 */
    search_key = 10;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=10 */
    search_key = 10;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=167772160 */
    treetable_get_first_key(table, &out);

    /* add key=168493056 */
    int *k30 = malloc(sizeof(int)); *k30 = 168493056;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);

    /* add key=167837696 */
    int *k35 = malloc(sizeof(int)); *k35 = 167837696;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);

    /* add key=655360 */
    int *k40 = malloc(sizeof(int)); *k40 = 655360;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);

    /* get key=10 */
    search_key = 10;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
