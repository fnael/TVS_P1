/* Property: Lookup correctness: inserted keys must be retrievable */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[7];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=655370 */
    int *k0 = malloc(sizeof(int)); *k0 = 655370;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);
    assert(balanced(table) && sorted(table));

    /* add key=590080 */
    int *k5 = malloc(sizeof(int)); *k5 = 590080;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);
    assert(balanced(table) && sorted(table));

    /* get key=-1920103027 */
    search_key = -1920103027;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-1920103027 */
    search_key = -1920103027;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-1920103027 */
    search_key = -1920103027;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-1920103027 */
    search_key = -1920103027;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
