#include "deque.h"
#include "owi.h"

static Deque *deque;
static DequeConf conf;
int stat;

void setup_tests() { stat = deque_new(&deque); }

void teardown_tests() { deque_destroy(deque); }

int main() {
  setup_tests();

  int a = owi_int();
  int b = owi_int();
  int c = owi_int();
  int d = owi_int();

  deque_add_first(deque, &a);
  deque_add_first(deque, &b);
  deque_add_last(deque, &c);
  deque_add_last(deque, &d);

  int *last;
  deque_get_last(deque, (void *)&last);
  owi_assert(d == *last);

  int *removed;
  deque_remove_last(deque, (void *)&removed);
  owi_assert(d == *removed);

  deque_get_last(deque, (void *)&last);
  owi_assert(c == *last);

  teardown_tests();
  return 0;
}
