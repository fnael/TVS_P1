/* Copyright (C) 2014  Richard Wiedenhöft <richard.wiedenhoeft@gmail.com>
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

#include "hashmap.h"
#include <assert.h>
#include <string.h>
#include <stdlib.h>

unsigned long int hashmap_fnv1a(void *data, unsigned long int len) {
  unsigned char *p = (unsigned char *)data;
  unsigned long int h = 2166136261UL;
  unsigned long int i;

  for (i = 0; i < len; i++) {
    h = (h ^ p[i]) * 16777619;
  }

  return h;
}

int hashmap_hash(char *str, int max_hash) {

  /* BUG-1:
     str passed directly to strlen without NULL check
   */

  /* Fixes 1 */
  if (!str || max_hash < 0) {
    exit(1);
  }

  unsigned long int fnv1a_hash = hashmap_fnv1a((void *)str, strlen(str));
  int hash = (int)(fnv1a_hash % (max_hash + 1));
  return hash;
}

struct hashmap_s {
  int size;
  struct hashmap_field *fields;
};

struct hashmap_field {
  int size;
  struct hashmap_entry *entries;
};

struct hashmap_entry {
  char *key;
  void *val;
  size_t len;
};

hashmap_t hashmap_new(int size) {
  hashmap_t map = (hashmap_t)malloc(sizeof(struct hashmap_s));

  /* BUG-3:
     map allocated with malloc without NULL check
   */

  /* Fixes 3 */
  if (!map) {
    exit(1);
  }

  struct hashmap_field *fields =
      (struct hashmap_field *)malloc(sizeof(struct hashmap_field) * size);

  /* BUG-2:
     fields allocated with malloc without NULL check
   */

  /* Fixes 2 */
  if (!fields) {
    free(map);
    exit(1);
  }

  for (int i = 0; i < size; i++) {
    struct hashmap_field *field = &fields[i];
    field->size = 0;
    field->entries = NULL;
  }

  map->size = size;
  map->fields = fields;

  return map;
}

void hashmap_free(hashmap_t map) {

  /* BUG-4:
     map dereferenced without NULL validation
   */

  /* Fixes 4 */
  if (!map) {
    return;
  }

  for (int i = 0; i < map->size; i++) {
    struct hashmap_field *field = map->fields + i;
    if (field->entries != 0) {
      int j;
      for (j = 0; j < field->size; j++) {
        struct hashmap_entry *entry = field->entries + j;
        free(entry->key);
        free(entry->val);
      }
      free(field->entries);
    }
  }
  free(map->fields);
  free(map);
}

void hashmap_set(hashmap_t map, char *key, void *value, size_t length) {

  /* BUG-5:
     map dereferenced through map->size and map->fields
     without checking whether map is NULL
   */

  /* BUG-6:
     key passed to strcmp/hashmap_hash without NULL check
   */

  /* Fixes 5 and 6 */
  if (!map || !key) {
    exit(1);
  }

  int hash = hashmap_hash(key, map->size - 1);
  struct hashmap_field *field = map->fields + hash;
  struct hashmap_entry *entry = NULL;

  int i;
  for (i = 0; i < field->size; i++) {
    entry = field->entries + i;
    if (strcmp(entry->key, key) == 0) {
      free(entry->val);
      goto set_val;
    }
  }

  if (value == NULL) {
    return;
  }

  field->size++;
  struct hashmap_entry *entries = (struct hashmap_entry *)malloc(
      field->size * sizeof(struct hashmap_entry));

  /* BUG-7:
     entries allocated with malloc and used without NULL check
   */

  /* Fixes 7 */
  if (!entries) {
    exit(1);
  }

  /* BUG-8:
     memcpy may dereference invalid pointers
   */

  /* Fixes 8 */
  if (field->entries != NULL) {
    memcpy(entries, field->entries,
           (field->size - 1) * sizeof(struct hashmap_entry));
    free(field->entries);
  }

  /* BUG-9:
     pointer arithmetic on unchecked malloc result
   */

  entry = &entries[field->size - 1];

  /* BUG-10:
     sizeof(key) allocates only pointer-sized memory
     before strcpy copies the full string
   */

  /* Fixes 10 */
  entry->key = (char *)malloc(strlen(key) + 1);

  /* BUG-11:
     malloc result unchecked before strcpy
   */

  /* Fixes 11 */
  if (!entry->key) {
    exit(1);
  }

  strcpy(entry->key, key);

  field->entries = entries;

set_val:
  if (value != NULL) {

    /* BUG-12:
       malloc result unchecked before memcpy
     */

    entry->val = malloc(length);

    /* Fixes 12 */
    if (!entry->val) {
      exit(1);
    }

    memcpy(entry->val, value, length);
    entry->len = length;
    
  } else {
    free(entry->key);
    free(entry->val);

    field->size--;

    if (entry != (field->entries + field->size)) {
      memcpy((void *)entry, (void *)(field->entries + field->size),
             sizeof(struct hashmap_entry));
    }

    /* BUG-13:
       realloc assigned directly to field->entries
       causing possible memory leak on failure
     */

    /* Fixes 13 */
    struct hashmap_entry *tmp = realloc(
        (void *)field->entries,
        field->size * sizeof(struct hashmap_entry));

    if (!tmp && field->size != 0) {
      exit(1);
    }

    field->entries = tmp;
  }
}

void *hashmap_get(hashmap_t map, char *key) {

  /* BUG-14:
     map dereferenced without NULL validation
   */

  /* BUG-15:
     key passed to strcmp without NULL validation
   */

  /* Fixes 14 and 15 */
  if (!map || !key) {
    exit(1);
  }

  int hash = hashmap_hash(key, map->size - 1);
  struct hashmap_field *field = map->fields + hash;
  struct hashmap_entry *entry;

  int i;
  for (i = 0; i < field->size; i++) {
    entry = field->entries + i;
    if (strcmp(entry->key, key) == 0) {

      /* BUG-16:
         malloc unchecked before memcpy
       */

      void *val = malloc(entry->len);

      /* Fixes 16 */
      if (!val) {
        exit(1);
      }

      memcpy(val, entry->val, entry->len);
      return val;
    }
  }

  return NULL;
}

int main() {
  hashmap_t map = hashmap_new(8);

  char *key = "42";
  int value = 42;
  hashmap_set(map, key, &value, sizeof(int));

  int *ret = (int *)hashmap_get(map, key);
  assert(ret != NULL);
  assert(*ret == value);

  free(ret);

  hashmap_free(map);
  return 0;
}
