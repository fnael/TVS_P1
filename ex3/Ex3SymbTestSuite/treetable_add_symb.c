#include <assert.h>
#include <klee/klee.h>
#include "../../ex2/treetable.h"

/*
 * Oracles implemented in Exercise 2
 */
extern int balanced(TreeTable *t);
extern int sorted(TreeTable *t);


 /*----------------------------------
 * PROPERTY:
 * Insertion preserves tree validity.
 -----------------------------------*/


    klee_make_symbolic(&k1, sizeof(k1), "k1");
    klee_make_symbolic(&k2, sizeof(k2), "k2");

    klee_make_symbolic(&v1, sizeof(v1), "v1");
    klee_make_symbolic(&v2, sizeof(v2), "v2");

    TreeTable *t;

    treetable_new(&t);

    /*
     * First insertion /empty tree
     */
    treetable_add(t, &k1, &v1);

    assert(sorted(t));
    assert(balanced(t));

    assert(treetable_size(t) == 1);

    void *out;

    assert(treetable_get(t, &k1, &out) == CC_OK);
    assert(*(int*)out == v1);

    /*
     * Second insertion
     */
    size_t before = treetable_size(t);

    treetable_add(t, &k2, &v2);

    assert(sorted(t));
    assert(balanced(t));

    assert(treetable_get(t, &k2, &out) == CC_OK);
    assert(*(int*)out == v2);

    /*
     * Duplicate-key insertion:
     */
    if (k1 == k2)
        assert(treetable_size(t) == before);
    else
        assert(treetable_size(t) == before + 1);

    treetable_destroy(t);

    return 0;
}
