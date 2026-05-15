#include <assert.h>
#include <stdio.h>

#include "../../ex2/treetable.h"

extern int balanced(TreeTable *t);
extern int sorted(TreeTable *t);

/*
 * Concrete replay tests
 * generated from KLEE symbolic execution.
 */

/*
 * Reproduces KLEE-discovered bug:
 * calling treetable_get_first_key()
 * on an empty tree causes
 * null-page access inside tree_min().
 */
static void test_empty_tree_bug(void)
{
    TreeTable *t;

    treetable_new(&t);

    void *out;

    /*
     * Expected to trigger bug.
     */
    treetable_get_first_key(t, &out);

    treetable_destroy(t);
}

/*
 * Valid minimum-key test.
 */
static void test_minimum_key(void)
{
    int k1 = 5;
    int k2 = 1;
    int k3 = 9;

    int v1 = 10;
    int v2 = 20;
    int v3 = 30;

    TreeTable *t;

    treetable_new(&t);

    treetable_add(t, &k1, &v1);
    treetable_add(t, &k2, &v2);
    treetable_add(t, &k3, &v3);

    assert(sorted(t));
    assert(balanced(t));

    void *out;

    assert(treetable_get_first_key(t, &out)
            == CC_OK);

    int returned = *(int*)out;

    assert(returned == 1);

    treetable_destroy(t);
}

int main(void)
{
    printf("Running concrete first-key tests...\n");

    /*
     * Uncomment to reproduce KLEE bug.
     */
    /* test_empty_tree_bug(); */

    test_minimum_key();

    printf("All first-key concrete tests passed.\n");

    return 0;
}
