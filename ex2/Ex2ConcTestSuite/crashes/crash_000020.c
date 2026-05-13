/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[33];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=436207621 */
    int *k0 = malloc(sizeof(int)); *k0 = 436207621;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get_first_key key=1140850688 */
    treetable_get_first_key(table, &out);

    /* get_greater_than key=35072 */
    search_key = 35072;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=33554432 */
    int *k15 = malloc(sizeof(int)); *k15 = 33554432;
    alloc_keys[alloc_count++] = k15;
    treetable_add(table, k15, k15);

    /* get_first_key key=1140850688 */
    treetable_get_first_key(table, &out);

    /* get_first_key key=35072 */
    treetable_get_first_key(table, &out);

    /* add key=4784128 */
    int *k30 = malloc(sizeof(int)); *k30 = 4784128;
    alloc_keys[alloc_count++] = k30;
    treetable_add(table, k30, k30);

    /* add key=1094795585 */
    int *k35 = malloc(sizeof(int)); *k35 = 1094795585;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);

    /* get key=436207616 */
    search_key = 436207616;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_first_key key=553648128 */
    treetable_get_first_key(table, &out);

    /* get_first_key key=324993024 */
    treetable_get_first_key(table, &out);

    /* get_greater_than key=65786 */
    search_key = 65786;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=999745 */
    search_key = 999745;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=244 */
    search_key = 244;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=10 */
    search_key = 10;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=10 */
    search_key = 10;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1094795521 */
    int *k80 = malloc(sizeof(int)); *k80 = 1094795521;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);

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

    /* add key=-1996486076 */
    int *k100 = malloc(sizeof(int)); *k100 = -1996486076;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);

    /* add key=0 */
    int *k105 = malloc(sizeof(int)); *k105 = 0;
    alloc_keys[alloc_count++] = k105;
    treetable_add(table, k105, k105);

    /* get_greater_than key=1090551808 */
    search_key = 1090551808;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=15993088 */
    search_key = 15993088;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=0 */
    search_key = 0;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=1094778882 */
    int *k130 = malloc(sizeof(int)); *k130 = 1094778882;
    alloc_keys[alloc_count++] = k130;
    treetable_add(table, k130, k130);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=-200736753 */
    search_key = -200736753;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=169476096 */
    int *k145 = malloc(sizeof(int)); *k145 = 169476096;
    alloc_keys[alloc_count++] = k145;
    treetable_add(table, k145, k145);

    /* add key=172228608 */
    int *k150 = malloc(sizeof(int)); *k150 = 172228608;
    alloc_keys[alloc_count++] = k150;
    treetable_add(table, k150, k150);

    /* add key=137 */
    int *k155 = malloc(sizeof(int)); *k155 = 137;
    alloc_keys[alloc_count++] = k155;
    treetable_add(table, k155, k155);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
