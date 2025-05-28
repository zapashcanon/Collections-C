#include "owi.h"
#include "treetable.h"
#include "utils.h"

static TreeTable *table;

int main() {
  treetable_new(cmp, &table);

  int x = owi_int();
  int y = owi_int();
  int z = owi_int();
  int w = owi_int();

  owi_assume(x < y && y < w && w < z);

  int a = owi_int();

  char str_a[] = {a, '\0'};

  int b = owi_int();

  char str_b[] = {b, '\0'};

  int c = owi_int();

  char str_c[] = {c, '\0'};

  int d = owi_int();

  char str_d[] = {d, '\0'};

  treetable_add(table, &z, str_a);
  treetable_add(table, &w, str_b);
  treetable_add(table, &y, str_c);
  treetable_add(table, &x, str_d);

  int one = 0;
  int two = 0;
  int three = 0;
  int four = 0;

  TreeTableIter iter;
  treetable_iter_init(&iter, table);

  TreeTableEntry entry;
  while (treetable_iter_next(&iter, &entry) != CC_ITER_END) {
    int const *key = entry.key;

    if (*key == x)
      one++;

    if (*key == y)
      two++;

    if (*key == z)
      three++;

    if (*key == w)
      four++;
  }

  owi_assert(1 == one);
  owi_assert(1 == two);
  owi_assert(1 == three);
  owi_assert(1 == four);

  treetable_destroy(table);
}
