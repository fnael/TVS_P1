/* Property: get_first_key correctness: must return minimum key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[196];
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

    /* add key=-858993460 */
    int *k35 = malloc(sizeof(int)); *k35 = -858993460;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);
    assert(balanced(table) && sorted(table));

    /* add key=-859058996 */
    int *k40 = malloc(sizeof(int)); *k40 = -859058996;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-858993460 */
    search_key = -858993460;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=655616 */
    int *k50 = malloc(sizeof(int)); *k50 = 655616;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);
    assert(balanced(table) && sorted(table));

    /* add key=1684300900 */
    int *k55 = malloc(sizeof(int)); *k55 = 1684300900;
    alloc_keys[alloc_count++] = k55;
    treetable_add(table, k55, k55);
    assert(balanced(table) && sorted(table));

    /* add key=1684300900 */
    int *k60 = malloc(sizeof(int)); *k60 = 1684300900;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);
    assert(balanced(table) && sorted(table));

    /* add key=1684300900 */
    int *k65 = malloc(sizeof(int)); *k65 = 1684300900;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);
    assert(balanced(table) && sorted(table));

    /* add key=1684300900 */
    int *k70 = malloc(sizeof(int)); *k70 = 1684300900;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);
    assert(balanced(table) && sorted(table));

    /* add key=6579300 */
    int *k75 = malloc(sizeof(int)); *k75 = 6579300;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);
    assert(balanced(table) && sorted(table));

    /* add key=-3355444 */
    int *k80 = malloc(sizeof(int)); *k80 = -3355444;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);
    assert(balanced(table) && sorted(table));

    /* get_greater_than key=-858993460 */
    search_key = -858993460;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=-976894523 */
    int *k90 = malloc(sizeof(int)); *k90 = -976894523;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);
    assert(balanced(table) && sorted(table));

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-976894523 */
    search_key = -976894523;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
