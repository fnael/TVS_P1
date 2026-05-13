/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[6];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=10 */
    int *k0 = malloc(sizeof(int)); *k0 = 10;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* add key=-454761244 */
    int *k5 = malloc(sizeof(int)); *k5 = -454761244;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);

    /* add key=655844 */
    int *k10 = malloc(sizeof(int)); *k10 = 655844;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=1532713819 */
    int *k15 = malloc(sizeof(int)); *k15 = 1532713819;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* get_greater_than key=1532713819 */
    search_key = 1532713819;
    treetable_get_greater_than(table, &search_key, &out);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
