/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[32];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=1465341783 */
    int *k0 = malloc(sizeof(int)); *k0 = 1465341783;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* add key=167860055 */
    int *k5 = malloc(sizeof(int)); *k5 = 167860055;
    alloc_keys[alloc_count++] = k5;
    treetable_add(table, k5, k5);

    /* add key=995572539 */
    int *k10 = malloc(sizeof(int)); *k10 = 995572539;
    alloc_keys[alloc_count++] = k10;
    treetable_add(table, k10, k10);

    /* get_greater_than key=4259927 */
    search_key = 4259927;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_first_key key=4260160 */
    treetable_get_first_key(table, &out);

    /* add key=167860033 */
    int *k25 = malloc(sizeof(int)); *k25 = 167860033;
    alloc_keys[alloc_count++] = k25;
    treetable_add(table, k25, k25);

    /* add key=-1539629765 */
    int *k30 = malloc(sizeof(int)); *k30 = -1539629765;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);

    /* get_greater_than key=167787323 */
    search_key = 167787323;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=993829947 */
    search_key = 993829947;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=1090521600 */
    search_key = 1090521600;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=1090601216 */
    int *k50 = malloc(sizeof(int)); *k50 = 1090601216;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);

    /* add key=22495488 */
    int *k55 = malloc(sizeof(int)); *k55 = 22495488;
    alloc_keys[alloc_count++] = k55;
    treetable_add(table, k55, k55);

    /* get_first_key key=1463499520 */
    treetable_get_first_key(table, &out);

    /* add key=1090519105 */
    int *k65 = malloc(sizeof(int)); *k65 = 1090519105;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);

    /* add key=1090519105 */
    int *k70 = malloc(sizeof(int)); *k70 = 1090519105;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);

    /* get_greater_than key=989858305 */
    search_key = 989858305;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=223893376 */
    search_key = 223893376;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=2561 */
    int *k85 = malloc(sizeof(int)); *k85 = 2561;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);

    /* get_greater_than key=655703 */
    search_key = 655703;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=4259927 */
    search_key = 4259927;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=4285505 */
    int *k100 = malloc(sizeof(int)); *k100 = 4285505;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);

    /* add key=167860033 */
    int *k105 = malloc(sizeof(int)); *k105 = 167860033;
    alloc_keys[alloc_count++] = k105;
    treetable_add(table, k105, k105);

    /* add key=1465334587 */
    int *k110 = malloc(sizeof(int)); *k110 = 1465334587;
    alloc_keys[alloc_count++] = k110;
    treetable_add(table, k110, k110);

    /* add key=993737472 */
    int *k115 = malloc(sizeof(int)); *k115 = 993737472;
    alloc_keys[alloc_count++] = k115;
    treetable_add(table, k115, k115);

    /* get_greater_than key=2561 */
    search_key = 2561;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=-1539629765 */
    int *k125 = malloc(sizeof(int)); *k125 = -1539629765;
    alloc_keys[alloc_count++] = k125;
    treetable_add(table, k125, k125);

    /* get_greater_than key=1090534203 */
    search_key = 1090534203;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=989855809 */
    search_key = 989855809;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=993737531 */
    search_key = 993737531;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=993737531 */
    search_key = 993737531;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=171653947 */
    search_key = 171653947;
    treetable_get_greater_than(table, &search_key, &out);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
