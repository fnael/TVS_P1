/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[14];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=10 */
    int *k0 = malloc(sizeof(int)); *k0 = 10;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get key=10 */
    search_key = 10;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=655360 */
    treetable_get_first_key(table, &out);

    /* get_first_key key=655616 */
    treetable_get_first_key(table, &out);

    /* add key=0 */
    int *k20 = malloc(sizeof(int)); *k20 = 0;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* add key=57088 */
    int *k25 = malloc(sizeof(int)); *k25 = 57088;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* add key=0 */
    int *k30 = malloc(sizeof(int)); *k30 = 0;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);

    /* add key=655360 */
    int *k35 = malloc(sizeof(int)); *k35 = 655360;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);

    /* add key=917514 */
    int *k40 = malloc(sizeof(int)); *k40 = 917514;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);

    /* get key=10 */
    search_key = 10;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k50 = malloc(sizeof(int)); *k50 = 0;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);

    /* get_greater_than key=0 */
    search_key = 0;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=196608 */
    int *k60 = malloc(sizeof(int)); *k60 = 196608;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
