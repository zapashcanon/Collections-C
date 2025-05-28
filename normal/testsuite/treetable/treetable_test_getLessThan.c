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

  int a = owi_int();

  char str_a[] = {a, '\0'};

  int b = owi_int();

  char str_b[] = {b, '\0'};

  int c = owi_int();

  char str_c[] = {c, '\0'};

  int d = owi_int();

  char str_d[] = {d, '\0'};

  owi_assume(x < y && y < z && z < w);

  treetable_add(table, &z, str_a);
  treetable_add(table, &w, str_b);
  treetable_add(table, &y, str_c);
  treetable_add(table, &x, str_d);

  int *g;
  treetable_get_lesser_than(table, &y, (void *)&g);

  owi_assert(x == *g);

  treetable_destroy(table);
}
