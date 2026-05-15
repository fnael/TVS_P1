#include <assert.h>
#include <stdio.h>

#include "../../ex2/treetable.h"

extern int balanced(TreeTable *t);
extern int sorted(TreeTable *t);

/*
 * Concrete test suite generated
 * from KLEE symbolic execution.
 */

static void test_equal_keys(void)
{
    int k1 = 0;
    int k2 = 0;

    int v1 = 0;
    int v2 = 0;

    TreeTable *t;

    treetable_new(&t);

    treetable_add(t, &k1, &v1);
    treetable_add(t, &k2, &v2);

    assert(sorted(t));
    assert(balanced(t));

    /*
     * Duplicate insertion:
     * size must remain 1
     */
    assert(treetable_size(t) == 1);

    treetable_destroy(t);
}

static void test_left_insertion(void)
{
    int k1 = 1;
    int k2 = 0;

    int v1 = 0;
    int v2 = 0;

    TreeTable *t;

    treetable_new(&t);

    treetable_add(t, &k1, &v1);
    treetable_add(t, &k2, &v2);

    assert(sorted(t));
    assert(balanced(t));

    assert(treetable_size(t) == 2);

    treetable_destroy(t);
}

static void test_right_insertion(void)
{
    int k1 = -1979711488;
    int k2 = 0;

    int v1 = 0;
    int v2 = 0;

    TreeTable *t;

    treetable_new(&t);

    treetable_add(t, &k1, &v1);
    treetable_add(t, &k2, &v2);

    assert(sorted(t));
    assert(balanced(t));

    assert(treetable_size(t) == 2);

    treetable_destroy(t);
}

int main(void)
{
    printf("Running concrete add tests...\n");

    test_equal_keys();
    test_left_insertion();
    test_right_insertion();

    printf("All add concrete tests passed.\n");

    return 0;
}
