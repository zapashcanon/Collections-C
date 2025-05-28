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

  owi_assume(x != y);

  treetable_add(table, &x, str_a);
  treetable_add(table, &y, str_b);

  char *ra;
  char *rb;

  treetable_get(table, &x, (void *)&ra);
  treetable_get(table, &y, (void *)&rb);

  owi_assert(strcmp(ra, str_a) == 0);
  owi_assert(strcmp(rb, str_b) == 0);

  treetable_destroy(table);
}
