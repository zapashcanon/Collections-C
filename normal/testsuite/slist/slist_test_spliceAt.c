#include "owi.h"
#include "slist.h"

static SList *list;
static SList *list2;
static int stat;

int a, b, c, d, e, f, g, h;

void setup_test() {
  slist_new(&list), slist_new(&list2);

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

  slist_add(list, va);
  slist_add(list, vb);
  slist_add(list, vc);
  slist_add(list, vd);

  va = (int *)malloc(sizeof(int));
  vb = (int *)malloc(sizeof(int));
  vc = (int *)malloc(sizeof(int));
  vd = (int *)malloc(sizeof(int));

  *va = e;
  *vb = f;
  *vc = g;
  *vd = h;

  slist_add(list2, va);
  slist_add(list2, vb);
  slist_add(list2, vc);
  slist_add(list2, vd);
};

void teardown_test() {
  slist_destroy(list);
  slist_destroy(list2);
};

int main() {
  setup_test();

  slist_splice_at(list, list2, 2);
  owi_assert(8 == slist_size(list));
  owi_assert(0 == slist_size(list2));

  int *ptr_e;
  slist_get_first(list, (void *)&ptr_e);
  owi_assert(a == *ptr_e);

  slist_get_last(list, (void *)&ptr_e);
  owi_assert(d == *ptr_e);

  slist_get_at(list, 2, (void *)&ptr_e);
  owi_assert(e == *ptr_e);

  teardown_test();
  return 0;
}
