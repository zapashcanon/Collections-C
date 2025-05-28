#include "owi.h"
#include "slist.h"

static SList *list;
static SList *list2;
static int stat;

void setup_test() {
  stat = slist_new(&list);
  slist_new(&list2);
};

void teardown_test() {
  slist_destroy(list);
  slist_destroy(list2);
};

int main() {
  setup_test();

  int a = owi_int();
  int b = owi_int();
  int c = owi_int();
  int d = owi_int();
  int e = owi_int();

  slist_add(list, &a);
  slist_add(list, &b);
  slist_add(list, &b);
  slist_add(list, &c);
  slist_add(list, &d);

  owi_assert(2 == slist_contains(list, &b));
  owi_assert(1 == slist_contains(list, &d));
  owi_assert(0 == slist_contains(list, &e));

  teardown_test();
  return 0;
}
