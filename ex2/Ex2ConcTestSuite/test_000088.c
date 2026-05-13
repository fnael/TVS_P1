/* Property: get_first_key correctness: must return minimum key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[17];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=-84215046 */
    int *k0 = malloc(sizeof(int)); *k0 = -84215046;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=-84215046 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_first_key key=-84215046 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_first_key key=-84215046 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_first_key key=719610 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=1147429888 */
    int *k25 = malloc(sizeof(int)); *k25 = 1147429888;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);
    assert(balanced(table) && sorted(table));

    /* add key=16645115 */
    int *k30 = malloc(sizeof(int)); *k30 = 16645115;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);
    assert(balanced(table) && sorted(table));

    /* add key=1147429888 */
    int *k35 = malloc(sizeof(int)); *k35 = 1147429888;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);
    assert(balanced(table) && sorted(table));

    /* add key=368835579 */
    int *k40 = malloc(sizeof(int)); *k40 = 368835579;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=1677721788 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* add key=25668 */
    int *k50 = malloc(sizeof(int)); *k50 = 25668;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k55 = malloc(sizeof(int)); *k55 = 0;
    alloc_keys[alloc_count++] = k55;
    treetable_add(table, k55, k55);
    assert(balanced(table) && sorted(table));

    /* add key=169212672 */
    int *k60 = malloc(sizeof(int)); *k60 = 169212672;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);
    assert(balanced(table) && sorted(table));

    /* add key=1885601792 */
    int *k65 = malloc(sizeof(int)); *k65 = 1885601792;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);
    assert(balanced(table) && sorted(table));

    /* add key=100 */
    int *k70 = malloc(sizeof(int)); *k70 = 100;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);
    assert(balanced(table) && sorted(table));

    /* add key=0 */
    int *k75 = malloc(sizeof(int)); *k75 = 0;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);
    assert(balanced(table) && sorted(table));

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
