/* Property: CRASH: assertion violation or memory safety bug detected by ASAN. */
#include <assert.h>
#include <stdlib.h>
#include "../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[24];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=1094795525 */
    int *k0 = malloc(sizeof(int)); *k0 = 1094795525;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=21053761 */
    search_key = 21053761;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=2 */
    int *k20 = malloc(sizeof(int)); *k20 = 2;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* get_first_key key=1094795520 */
    treetable_get_first_key(table, &out);

    /* get key=9537 */
    search_key = 9537;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k35 = malloc(sizeof(int)); *k35 = 0;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);

    /* add key=1095303168 */
    int *k40 = malloc(sizeof(int)); *k40 = 1095303168;
    alloc_keys[alloc_count++] = k40;
    treetable_add(table, k40, k40);

    /* add key=131072 */
    int *k45 = malloc(sizeof(int)); *k45 = 131072;
    alloc_keys[alloc_count++] = k45;
    treetable_add(table, k45, k45);

    /* add key=-1852768256 */
    int *k50 = malloc(sizeof(int)); *k50 = -1852768256;
    alloc_keys[alloc_count++] = k50;
    treetable_add(table, k50, k50);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=83886080 */
    search_key = 83886080;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=512 */
    int *k65 = malloc(sizeof(int)); *k65 = 512;
    alloc_keys[alloc_count++] = k65;
    treetable_add(table, k65, k65);

    /* add key=-1275035643 */
    int *k70 = malloc(sizeof(int)); *k70 = -1275035643;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);

    /* add key=33600692 */
    int *k75 = malloc(sizeof(int)); *k75 = 33600692;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);

    /* add key=-2147155968 */
    int *k80 = malloc(sizeof(int)); *k80 = -2147155968;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);

    /* add key=512 */
    int *k85 = malloc(sizeof(int)); *k85 = 512;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=172048705 */
    search_key = 172048705;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=167837696 */
    int *k100 = malloc(sizeof(int)); *k100 = 167837696;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);

    /* add key=-1852751616 */
    int *k105 = malloc(sizeof(int)); *k105 = -1852751616;
    alloc_keys[alloc_count++] = k105;
    treetable_add(table, k105, k105);

    /* get key=-1852730991 */
    search_key = -1852730991;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
