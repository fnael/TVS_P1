/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[9];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=454761243 */
    int *k0 = malloc(sizeof(int)); *k0 = 454761243;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get_greater_than key=437984027 */
    search_key = 437984027;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=454761243 */
    search_key = 454761243;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=454761243 */
    search_key = 454761243;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=167779099 */
    search_key = 167779099;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=169345024 */
    int *k25 = malloc(sizeof(int)); *k25 = 169345024;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* add key=2560 */
    int *k30 = malloc(sizeof(int)); *k30 = 2560;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);

    /* add key=2592 */
    int *k35 = malloc(sizeof(int)); *k35 = 2592;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
