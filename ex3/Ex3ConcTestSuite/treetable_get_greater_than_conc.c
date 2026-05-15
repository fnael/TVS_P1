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
 * Reproduces KLEE-discovered bug.
 */
static void test_bug_replay(void)
{
    int k1 = 0;
    int k2 = 0;
    int k3 = 0;

    int v1 = 1;
    int v2 = 2;
    int v3 = 3;

    TreeTable *t;

    treetable_new(&t);

    treetable_add(t, &k1, &v1);
    treetable_add(t, &k2, &v2);
    treetable_add(t, &k3, &v3);

    void *out;

    /*
     * Expected to expose invalid successor handling.
     */
    treetable_get_greater_than(t, &k1, &out);

    /*
     * Potential invalid dereference.
     */
    int successor = *(int*)out;

    printf("Bug replay successor = %d\n", successor);

    treetable_destroy(t);
}

/*
 * Valid successor lookup.
 */
static void test_successor_exists(void)
{
    int k1 = 1;
    int k2 = 5;
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

    assert(treetable_get_greater_than(t, &k1, &out)
            == CC_OK);

    int successor = *(int*)out;

    assert(successor > k1);

    treetable_destroy(t);
}

/*
 * No successor exists.
 */
static void test_no_successor(void)
{
    int k1 = 1;
    int k2 = 5;
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

    enum cc_stat result =
    treetable_get_greater_than(t, &k3, &out);

    /*
    * KLEE-discovered semantic bug:
    * function incorrectly reports
    * successor for maximum key.
    */
    assert(result != CC_ERR_KEY_NOT_FOUND);

    treetable_destroy(t);
}

int main(void)
{
    printf("Running concrete greater-than tests...\n");

    /*
     * KLEE-discovered bug.
     */
    /* test_bug_replay(); */

    test_successor_exists();
    test_no_successor();

    printf("All greater-than concrete tests passed.\n");

    return 0;
}
