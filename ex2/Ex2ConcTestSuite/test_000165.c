/* Property: get_first_key correctness: must return minimum key */
#include <assert.h>
#include <stdlib.h>
#include "../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[32];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=-859045883 */
    int *k0 = malloc(sizeof(int)); *k0 = -859045883;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);
    assert(balanced(table) && sorted(table));

    /* add key=-858993460 */
    int *k5 = malloc(sizeof(int)); *k5 = -858993460;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);
    assert(balanced(table) && sorted(table));

    /* add key=2586 */
    int *k10 = malloc(sizeof(int)); *k10 = 2586;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);
    assert(balanced(table) && sorted(table));

    /* add key=-1996456124 */
    int *k15 = malloc(sizeof(int)); *k15 = -1996456124;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);
    assert(balanced(table) && sorted(table));

    /* get key=19202048 */
    search_key = 19202048;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=-1828716544 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get_greater_than key=-1617718381 */
    search_key = -1617718381;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1819044973 */
    search_key = -1819044973;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1819049069 */
    search_key = -1819049069;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=5242880 */
    int *k45 = malloc(sizeof(int)); *k45 = 5242880;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);
    assert(balanced(table) && sorted(table));

    /* add key=1094795520 */
    int *k50 = malloc(sizeof(int)); *k50 = 1094795520;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);
    assert(balanced(table) && sorted(table));

    /* get key=999745 */
    search_key = 999745;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=8978676 */
    search_key = 8978676;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=33554432 */
    int *k65 = malloc(sizeof(int)); *k65 = 33554432;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);
    assert(balanced(table) && sorted(table));

    /* add key=10 */
    int *k70 = malloc(sizeof(int)); *k70 = 10;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);
    assert(balanced(table) && sorted(table));

    /* add key=1094795521 */
    int *k75 = malloc(sizeof(int)); *k75 = 1094795521;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=2586 */
    search_key = 2586;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=2628 */
    int *k95 = malloc(sizeof(int)); *k95 = 2628;
    alloc_keys[alloc_count++] = k95;
    treetable_add(table, k95, k95);
    assert(balanced(table) && sorted(table));

    /* add key=60160 */
    int *k100 = malloc(sizeof(int)); *k100 = 60160;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);
    assert(balanced(table) && sorted(table));

    /* get_first_key key=1094795520 */
    if (treetable_size(table) > 0)
        assert(treetable_get_first_key(table, &out) == CC_OK);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=15993088 */
    search_key = 15993088;
    if (treetable_get_greater_than(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=655616 */
    int *k120 = malloc(sizeof(int)); *k120 = 655616;
    alloc_keys[alloc_count++] = k120;
    treetable_add(table, k120, k120);
    assert(balanced(table) && sorted(table));

    /* add key=1094779136 */
    int *k125 = malloc(sizeof(int)); *k125 = 1094779136;
    alloc_keys[alloc_count++] = k125;
    treetable_add(table, k125, k125);
    assert(balanced(table) && sorted(table));

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-200736753 */
    search_key = -200736753;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=169476096 */
    int *k140 = malloc(sizeof(int)); *k140 = 169476096;
    alloc_keys[alloc_count++] = k140;
    treetable_add(table, k140, k140);
    assert(balanced(table) && sorted(table));

    /* add key=172228608 */
    int *k145 = malloc(sizeof(int)); *k145 = 172228608;
    alloc_keys[alloc_count++] = k145;
    treetable_add(table, k145, k145);
    assert(balanced(table) && sorted(table));

    /* add key=137 */
    int *k150 = malloc(sizeof(int)); *k150 = 137;
    alloc_keys[alloc_count++] = k150;
    treetable_add(table, k150, k150);
    assert(balanced(table) && sorted(table));

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
