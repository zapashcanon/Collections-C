#include "owi.h"
#include "slist.h"

static SList *list;
static SList *list2;
static int stat;

bool pred1(const void *e) { return *(int *)e == 0; }

bool pred2(const void *e) { return *(int *)e >= 3; }

bool pred3(const void *e) { return *(int *)e > 0; }

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

void CHECK_EQ_LIST(SList *l1, SList *l2) {
  owi_assert(slist_size(l1) == slist_size(l2));
  SListZipIter zip;
  slist_zip_iter_init(&zip, l1, l2);
  void *e1, *e2;
  while (slist_zip_iter_next(&zip, &e1, &e2) != CC_ITER_END) {
    owi_assert(e1 == e2);
  }
}

int main() {
  setup_test();

  owi_assume(a != 0 && b != 0 && c != 0 && d != 0);

  owi_assert(4 == slist_size(list));
  slist_filter_mut(list, pred1);

  owi_assert(0 == slist_size(list));

  void *e = NULL;
  slist_get_first(list, &e);
  owi_assert(e == NULL);

  teardown_test();
  return 0;
}
