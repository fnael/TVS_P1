/*
 * INPUT FORMAT
 * ------------
 * Each AFL input is interpreted as a sequence of 5-byte commands:
 *   byte 0      : opcode — selects the operation (taken mod 4):
 *                   0 -> treetable_add(table, key, value)
 *                   1 -> treetable_get(table, key)
 *                   2 -> treetable_get_first_key(table)
 *                   3 -> treetable_get_greater_than(table, key)
 *   bytes 1..4  : little-endian int32 used as the key argument
 *
 */

#include <assert.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>
#include "../../treetable.h"

__AFL_FUZZ_INIT();

int main(void) {
    __AFL_INIT();

    unsigned char *buf = __AFL_FUZZ_TESTCASE_BUF;

    while (__AFL_LOOP(10000)) {

        int len = __AFL_FUZZ_TESTCASE_LEN;

        TreeTable *table;
        if (treetable_new(&table) != CC_OK)
            continue;

        int max_cmds = len / 5;
        int **allocated = malloc(max_cmds * sizeof(int *));
        int alloc_count = 0;

        if (!allocated) {
            treetable_destroy(table);
            continue;
        }

        for (int i = 0; i + 5 <= len; i += 5) {
           uint8_t op = buf[i] % 4;
           int32_t k;
           memcpy(&k, &buf[i + 1], sizeof(k));

           switch (op) {

               case 0: {
                // treetable_add
                    int *key_copy = malloc(sizeof(int));
                    if (!key_copy) break;
                    *key_copy = k;
                    allocated[alloc_count++] = key_copy;
                    treetable_add(table, key_copy, key_copy);
                    assert(balanced(table) && sorted(table));
                    break;
               }

               case 1: {
                   void *out = NULL;
                   enum cc_stat r = treetable_get(table, &k, &out);

                   if (r == CC_OK)
                       assert(out != NULL);
                   break;

               }

               case 2: {
                   // treetable_get_first_key
                   void *out = NULL;
                   enum cc_stat r = treetable_get_first_key(table, &out);

                   if (treetable_size(table) > 0)
                       assert(r == CC_OK && out != NULL);
                   else
                       assert(r == CC_ERR_KEY_NOT_FOUND);
                   break;
               }

               case 3: {
                   // treetable_get_greater_than
                   void *out = NULL;
                   enum cc_stat r = treetable_get_greater_than(table, &k, &out);
                   if (r == CC_OK) {
                       assert(out != NULL);
                   }
                   break;
               }
           }
       }
       treetable_destroy(table);
       for (int j = 0; j < alloc_count; j++)
           free(allocated[j]);
       free(allocated);
    }
    return 0;
}
