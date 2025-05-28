#include "list.h"
#include "owi.h"

static List *list1;
static List *list2;

void setup_tests() { list_new(&list1), list_new(&list2); }

void teardown_test() {
  list_destroy(list1);
  list_destroy(list2);
}

int main() {
  setup_tests();

  int a = owi_int();
  int b = owi_int();
  int c = owi_int();
  int d = owi_int();
  int p = owi_int();

  list_add(list1, &a);
  list_add(list1, &b);
  list_add(list1, &c);
  list_add(list1, &d);

  owi_assert(4 == list_size(list1));

  int *first;
  list_get_first(list1, (void *)&first);
  owi_assert(a == *first);

  list_add_last(list1, &p);
  owi_assert(5 == list_size(list1));

  list_get_last(list1, (void *)&first);
  owi_assert(p == *first);

  teardown_test();
}
