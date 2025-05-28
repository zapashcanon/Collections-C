#include "array.h"
#include "owi.h"

static Array *v1;
static Array *v2;
static ArrayConf vc;
static int stat;

int main() {
  stat = array_new(&v1);

  int a = owi_int();
  int b = owi_int();
  int c = owi_int();

  int r = owi_int();
  array_add(v1, &a);
  array_add(v1, &b);
  array_add(v1, &c);

  array_replace_at(v1, &r, 2, NULL);

  int *repl;
  array_get_at(v1, 2, (void *)&repl);

  owi_assert(*repl != c);
  owi_assert(*repl == r);

  array_destroy(v1);

  return 0;
}
