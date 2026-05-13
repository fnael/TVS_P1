/* Property: get_first_key correctness: must return minimum key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[154];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=0 */
    int *k0 = malloc(sizeof(int)); *k0 = 0;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=-791884852 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=-860238644 */
    int *k10 = malloc(sizeof(int)); *k10 = -860238644;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);
    assert(balanced(table) && sorted(table));

    /* add key=-858993460 */
    int *k15 = malloc(sizeof(int)); *k15 = -858993460;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);
    assert(balanced(table) && sorted(table));

    /* add key=-825439028 */
    int *k20 = malloc(sizeof(int)); *k20 = -825439028;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);
    assert(balanced(table) && sorted(table));

    /* add key=-2134061876 */
    int *k25 = malloc(sizeof(int)); *k25 = -2134061876;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-858993460 */
    search_key = -858993460;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-1616928865 */
    int *k35 = malloc(sizeof(int)); *k35 = -1616928865;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616934241 */
    search_key = -1616934241;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=256159 */
    search_key = 256159;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-1616928865 */
    int *k440 = malloc(sizeof(int)); *k440 = -1616928865;
    alloc_keys[alloc_count++] = k440;
    treetable_add(table, k440, k440);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1616928865 */
    search_key = -1616928865;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-861954145 */
    search_key = -861954145;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-858993460 */
    int *k740 = malloc(sizeof(int)); *k740 = -858993460;
    alloc_keys[alloc_count++] = k740;
    treetable_add(table, k740, k740);
    assert(balanced(table) && sorted(table));

    /* add key=-855651125 */
    int *k745 = malloc(sizeof(int)); *k745 = -855651125;
    alloc_keys[alloc_count++] = k745;
    treetable_add(table, k745, k745);
    assert(balanced(table) && sorted(table));

    /* add key=-861614900 */
    int *k750 = malloc(sizeof(int)); *k750 = -861614900;
    alloc_keys[alloc_count++] = k750;
    treetable_add(table, k750, k750);
    assert(balanced(table) && sorted(table));

    /* add key=-855638068 */
    int *k755 = malloc(sizeof(int)); *k755 = -855638068;
    alloc_keys[alloc_count++] = k755;
    treetable_add(table, k755, k755);
    assert(balanced(table) && sorted(table));

    /* add key=-858993460 */
    int *k760 = malloc(sizeof(int)); *k760 = -858993460;
    alloc_keys[alloc_count++] = k760;
    treetable_add(table, k760, k760);
    assert(balanced(table) && sorted(table));

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
