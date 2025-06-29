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
  int e = owi_int();
  int f = owi_int();
  int g = owi_int();

  deque_add_last(deque, &a);
  deque_add_first(deque, &b);
  deque_add_first(deque, &c);
  deque_add_first(deque, &d);
  deque_add_first(deque, &e);
  deque_add_first(deque, &f);

  deque_add_at(deque, &g, 3);

  const void *const *buff = deque_get_buffer(deque);

  const void *elem = buff[6];
  owi_assert(elem == &g);

  const void *elem1 = buff[0];
  owi_assert(elem1 == &b);

  const void *elem2 = buff[7];
  owi_assert(elem2 == &c);

  const void *elem3 = buff[1];
  owi_assert(elem3 == &a);

  teardown_tests();
  return 0;
}
