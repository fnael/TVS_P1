#include <assert.h>
#include <klee/klee.h>
#include "../../ex2/treetable.h"

/*
 * Oracles from Exercise 2
 */
extern int balanced(TreeTable *t);
extern int sorted(TreeTable *t);

/*-------------------------------------------------------
 * PROPERTY:
 * The first key returned is the minimum key in the tree
 -------------------------------------------------------*/
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
     * Empty tree case
     */
    void *out;

    assert(treetable_get_first_key(t, &out)
            == CC_ERR_KEY_NOT_FOUND);

    /*
     * Insert symbolic keys
     */
    treetable_add(t, &k1, &v1);
    treetable_add(t, &k2, &v2);
    treetable_add(t, &k3, &v3);

    assert(sorted(t));
    assert(balanced(t));

    /*
     * Get minimum key
     */
    assert(treetable_get_first_key(t, &out)
            == CC_OK);

    int returned = *(int*)out;

    /*
     * Returned key must be <= every inserted key
     */
    assert(returned <= k1);
    assert(returned <= k2);
    assert(returned <= k3);

    /*
     * Returned key must equal one inserted key
     */
    assert(returned == k1
        || returned == k2
        || returned == k3);

    treetable_destroy(t);

    return 0;
}
