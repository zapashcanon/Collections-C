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

  ListIter iter;
  list_diter_init(&iter, list1);

  owi_assume(a != b && a != c && a != d && c != b && c != d);

  int *i;
  while (list_diter_next(&iter, (void *)&i) != CC_ITER_END) {
    if (*i == a || *i == c) {
      list_diter_remove(&iter, NULL);
      free(i);
    }
  }
  owi_assert(2 == list_size(list1));

  int *first;
  list_get_first(list1, (void *)&first);

  int *last;
  list_get_last(list1, (void *)&last);

  int *i1;
  list_get_at(list1, 1, (void *)&i1);

  owi_assert(b == *first);
  owi_assert(d == *last);
  owi_assert(d == *i1);

  teardown_test();
}
