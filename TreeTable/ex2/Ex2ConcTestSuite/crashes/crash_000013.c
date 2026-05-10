/* Property: CRASH: assertion violation or memory safety bug detected by ASAN. */
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

    /* get key=150994954 */
    search_key = 150994954;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=2560 */
    int *k10 = malloc(sizeof(int)); *k10 = 2560;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* add key=587205121 */
    int *k15 = malloc(sizeof(int)); *k15 = 587205121;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* get key=150994944 */
    search_key = 150994944;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=16777219 */
    int *k25 = malloc(sizeof(int)); *k25 = 16777219;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* get_first_key key=587202560 */
    treetable_get_first_key(table, &out);

    /* add key=655616 */
    int *k35 = malloc(sizeof(int)); *k35 = 655616;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);

    /* add key=167772169 */
    int *k40 = malloc(sizeof(int)); *k40 = 167772169;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);

    /* add key=167837696 */
    int *k45 = malloc(sizeof(int)); *k45 = 167837696;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);

    /* add key=2339 */
    int *k50 = malloc(sizeof(int)); *k50 = 2339;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);

    /* add key=196617 */
    int *k55 = malloc(sizeof(int)); *k55 = 196617;
    alloc_keys[alloc_count++] = k55;
    treetable_add(table, k55, k55);

    /* add key=2561 */
    int *k60 = malloc(sizeof(int)); *k60 = 2561;
    alloc_keys[alloc_count++] = k60;
    treetable_add(table, k60, k60);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
