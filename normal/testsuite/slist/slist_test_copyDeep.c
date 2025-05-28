#include "owi.h"
#include "slist.h"
#include "utils.h"

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

  SList *cp;
  slist_copy_deep(list, copy, &cp);
  owi_assert(4 == slist_size(cp));

  int *e;
  slist_get_at(cp, 2, (void *)&e);

  void *e2;
  slist_get_at(list, 2, &e2);
  owi_assert(*e == *(int *)e2);

  slist_get_at(list, 2, &e2);
  slist_get_at(cp, 2, (void *)&e);
  owi_assert(e != e2);

  slist_destroy_cb(cp, free);

  teardown_test();
  return 0;
}
