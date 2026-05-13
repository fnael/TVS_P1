/* Property: Validity preservation: balanced and sorted invariants hold after inserts */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[5];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=4276490 */
    int *k0 = malloc(sizeof(int)); *k0 = 4276490;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);
    assert(balanced(table) && sorted(table));

    /* add key=167837952 */
    int *k5 = malloc(sizeof(int)); *k5 = 167837952;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);
    assert(balanced(table) && sorted(table));

    /* add key=167772160 */
    int *k10 = malloc(sizeof(int)); *k10 = 167772160;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);
    assert(balanced(table) && sorted(table));

    /* add key=10 */
    int *k15 = malloc(sizeof(int)); *k15 = 10;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);
    assert(balanced(table) && sorted(table));

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
