/* Property: CRASH: treetable_get_greater_than returns a key that is not strictly greater than the search key, violating the API contract (SIGABRT). */
#include <assert.h>
#include <stdlib.h>
#include "../../treetable.h"

int main(void)
{
    TreeTable *table;
    if (treetable_new(&table) != CC_OK) return 0;

    int *alloc_keys[23];
    int alloc_count = 0;
    void *out = NULL;
    int search_key;

    /* add key=1094778885 */
    int *k0 = malloc(sizeof(int)); *k0 = 1094778885;
    alloc_keys[alloc_count++] = k0;
    treetable_add(table, k0, k0);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k20 = malloc(sizeof(int)); *k20 = 0;
    alloc_keys[alloc_count++] = k20;
    treetable_add(table, k20, k20);

    /* get key=-65536 */
    search_key = -65536;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get_greater_than key=-1 */
    search_key = -1;
    treetable_get_greater_than(table, &search_key, &out);

    /* add key=-1 */
    int *k35 = malloc(sizeof(int)); *k35 = -1;
    alloc_keys[alloc_count++] = k35;
    treetable_add(table, k35, k35);

    /* get_greater_than key=-1 */
    search_key = -1;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=-1 */
    search_key = -1;
    treetable_get_greater_than(table, &search_key, &out);

    /* get_greater_than key=1107296255 */
    search_key = 1107296255;
    treetable_get_greater_than(table, &search_key, &out);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=1094795585 */
    search_key = 1094795585;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* get key=4276545 */
    search_key = 4276545;
    if (treetable_get(table, &search_key, &out) == CC_OK)
        assert(out != NULL);

    /* add key=0 */
    int *k70 = malloc(sizeof(int)); *k70 = 0;
    alloc_keys[alloc_count++] = k70;
    treetable_add(table, k70, k70);

    /* add key=2560 */
    int *k75 = malloc(sizeof(int)); *k75 = 2560;
    alloc_keys[alloc_count++] = k75;
    treetable_add(table, k75, k75);

    /* add key=167773184 */
    int *k80 = malloc(sizeof(int)); *k80 = 167773184;
    alloc_keys[alloc_count++] = k80;
    treetable_add(table, k80, k80);

    /* add key=0 */
    int *k85 = malloc(sizeof(int)); *k85 = 0;
    alloc_keys[alloc_count++] = k85;
    treetable_add(table, k85, k85);

    /* add key=0 */
    int *k90 = malloc(sizeof(int)); *k90 = 0;
    alloc_keys[alloc_count++] = k90;
    treetable_add(table, k90, k90);

    /* add key=0 */
    int *k95 = malloc(sizeof(int)); *k95 = 0;
    alloc_keys[alloc_count++] = k95;
    treetable_add(table, k95, k95);

    /* add key=0 */
    int *k100 = malloc(sizeof(int)); *k100 = 0;
    alloc_keys[alloc_count++] = k100;
    treetable_add(table, k100, k100);

    /* add key=8388899 */
    int *k105 = malloc(sizeof(int)); *k105 = 8388899;
    alloc_keys[alloc_count++] = k105;
    treetable_add(table, k105, k105);

    treetable_destroy(table);
    for (int i = 0; i < alloc_count; i++) free(alloc_keys[i]);
    return 0;
}
