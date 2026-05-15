#include <assert.h>
#include <klee/klee.h>
#include "../../ex2/treetable.h"

/*
 * Oracles from Exercise 2
 */
extern int balanced(TreeTable *t);
extern int sorted(TreeTable *t);

/*------------------------------------------------------
 * PROPERTY:
 * Lookup correctness.
 *	-Inserted keys must be retrievable.
 *	-Missing keys must return KEY_NOT_FOUND.
 -----------------------------------------------------*/
int main(void)
{
    int k1, k2, missing;
    int v1, v2;

    klee_make_symbolic(&k1, sizeof(k1), "k1");
    klee_make_symbolic(&k2, sizeof(k2), "k2");
    klee_make_symbolic(&missing, sizeof(missing), "missing");

    klee_make_symbolic(&v1, sizeof(v1), "v1");
    klee_make_symbolic(&v2, sizeof(v2), "v2");

    TreeTable *t;

    treetable_new(&t);

    /*
     * Empty tree lookup
     */
    void *out;

    assert(treetable_get(t, &k1, &out)
            == CC_ERR_KEY_NOT_FOUND);

    /*
     * Insert first key
     */
    treetable_add(t, &k1, &v1);

    assert(sorted(t));
    assert(balanced(t));

    assert(treetable_get(t, &k1, &out) == CC_OK);
    assert(*(int*)out == v1);

    /*
     * Insert second key
     */
    treetable_add(t, &k2, &v2);

    assert(sorted(t));
    assert(balanced(t));

    assert(treetable_get(t, &k2, &out) == CC_OK);
    assert(*(int*)out == v2);

    /*
     * Missing-key lookup
     */
    if (missing != k1 && missing != k2) {
        assert(treetable_get(t, &missing, &out)
                == CC_ERR_KEY_NOT_FOUND);
    }

    treetable_destroy(t);

    return 0;
}
