#include "list.h"
#include "owi.h"

static List *list1;
static List *list2;

int a, b, c, d, e, f, g, h;

void setup_tests() {
  list_new(&list1), list_new(&list2);

  a = owi_int();
  b = owi_int();
  c = owi_int();
  d = owi_int();
  e = owi_int();
  f = owi_int();
  g = owi_int();
  h = owi_int();

  int *va = (int *)malloc(sizeof(int));
  int *vb = (int *)malloc(sizeof(int));
  int *vc = (int *)malloc(sizeof(int));
  int *vd = (int *)malloc(sizeof(int));

  *va = a;
  *vb = b;
  *vc = c;
  *vd = d;

  list_add(list1, va);
  list_add(list1, vb);
  list_add(list1, vc);
  list_add(list1, vd);

  va = (int *)malloc(sizeof(int));
  vb = (int *)malloc(sizeof(int));
  vc = (int *)malloc(sizeof(int));
  vd = (int *)malloc(sizeof(int));

  *va = e;
  *vb = f;
  *vc = g;
  *vd = h;

  list_add(list2, va);
  list_add(list2, vb);
  list_add(list2, vc);
  list_add(list2, vd);
}

void teardown_test() {
  list_destroy_cb(list1, free);
  list_destroy(list2);
}

int main() {
  setup_tests();

  int *el;
  list_remove_last(list1, (void *)&el);
  free(el);
  owi_assert(3 == list_size(list1));

  owi_assert(CC_OK == list_get_last(list1, (void *)&el));
  owi_assert(c == *el);

  teardown_test();
}
