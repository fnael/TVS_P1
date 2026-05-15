#include <assert.h>
#include <klee/klee.h>
#include "../../ex2/treetable.h"

/*
 * Oracles from Exercise 2
 */
extern int balanced(TreeTable *t);
extern int sorted(TreeTable *t);

/*-------------------------------------
 * PROPERTY:
 * -treetable_get_greater_than()
 * -returns a strictly greater key
 ------------------------------------*/
int main(void)
{
    int k1, k2, k3;
    int v1, v2, v3;

    klee_make_symbolic(&k1, sizeof(k1), "k1");
    klee_make_symbolic(&k2, sizeof(k2), "k2");
    klee_make_symbolic(&k3, sizeof(k3), "k3");

    klee_make_symbolic(&v1, sizeof(v1), "v1");
    klee_make_symbolic(&v2, sizeof(v2), "v2");
    klee_make_symbolic(&v3, sizeof(v3), "v3");

    TreeTable *t;

    treetable_new(&t);

    /*
     * Build symbolic tree
     */
    treetable_add(t, &k1, &v1);
    treetable_add(t, &k2, &v2);
    treetable_add(t, &k3, &v3);

    assert(sorted(t));
    assert(balanced(t));

    /*
     * Query successor of k1
     */
    void *out;

    enum cc_stat result =
        treetable_get_greater_than(t, &k1, &out);

    /*
     * Two possible situations:
     *
     * 1. k1 has no successor
     * 2. successor exists and is strictly greater
     */
    if (result == CC_OK) {
        int successor = *(int*)out;

        assert(successor > k1);

        /*
         * Successor must be one
         * of inserted keys
         */
        assert(successor == k1
            || successor == k2
            || successor == k3);

    } else {
        assert(result == CC_ERR_KEY_NOT_FOUND);
    }

    treetable_destroy(t);

    return 0;
}
