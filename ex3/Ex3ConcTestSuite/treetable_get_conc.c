#include <assert.h>
#include <stdio.h>
#include "../../ex2/treetable.h"

extern int balanced(TreeTable *t);
extern int sorted(TreeTable *t);

/*
 * Concrete replay tests
 * generated from KLEE symbolic execution.
 */

static void test_empty_lookup(void)
{
    int k = 0;

    TreeTable *t;

    treetable_new(&t);

    void *out;

    assert(treetable_get(t, &k, &out)
            == CC_ERR_KEY_NOT_FOUND);

    treetable_destroy(t);
}

static void test_successful_lookup(void)
{
    int k1 = 1;
    int k2 = 0;

    int v1 = 10;
    int v2 = 20;

    TreeTable *t;

    treetable_new(&t);

    treetable_add(t, &k1, &v1);
    treetable_add(t, &k2, &v2);

    assert(sorted(t));
    assert(balanced(t));

    void *out;

    assert(treetable_get(t, &k1, &out)
            == CC_OK);

    assert(*(int*)out == v1);

    assert(treetable_get(t, &k2, &out)
            == CC_OK);

    assert(*(int*)out == v2);

    treetable_destroy(t);
}

static void test_missing_lookup(void)
{
    int k1 = 1;
    int k2 = 2;
    int missing = 999;

    int v1 = 10;
    int v2 = 20;

    TreeTable *t;

    treetable_new(&t);

    treetable_add(t, &k1, &v1);
    treetable_add(t, &k2, &v2);

    assert(sorted(t));
    assert(balanced(t));

    void *out;

    assert(treetable_get(t, &missing, &out)
            == CC_ERR_KEY_NOT_FOUND);

    treetable_destroy(t);
}

int main(void)
{
    printf("Running concrete get tests...\n");

    test_empty_lookup();
    test_successful_lookup();
    test_missing_lookup();

    printf("All get concrete tests passed.\n");

    return 0;
}
