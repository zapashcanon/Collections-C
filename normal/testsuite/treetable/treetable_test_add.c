#include "owi.h"
#include "treetable.h"
#include "utils.h"

static TreeTable *table;

int main() {
  treetable_new(cmp, &table);

  int x = owi_int();
  int y = owi_int();
  int z = owi_int();

  int a = owi_int();

  char str_a[] = {a, '\0'};

  int b = owi_int();

  char str_b[] = {b, '\0'};

  int c = owi_int();

  char str_c[] = {c, '\0'};

  owi_assume(a < b);
  owi_assume(b < c);

  treetable_add(table, &x, str_a);
  treetable_add(table, &y, str_b);
  treetable_add(table, &z, str_c);

  owi_assert(1 == treetable_contains_key(table, &x));
  owi_assert(1 == treetable_contains_key(table, &z));

  treetable_destroy(table);
}
