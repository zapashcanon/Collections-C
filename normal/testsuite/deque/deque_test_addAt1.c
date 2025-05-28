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
  deque_add_last(deque, &b);
  deque_add_last(deque, &c);
  deque_add_last(deque, &d);
  deque_add_last(deque, &e);
  deque_add_last(deque, &f);

  deque_add_at(deque, &g, 4);

  const void *const *buff = deque_get_buffer(deque);

  owi_assert(buff[4] == &g);

  owi_assert(buff[5] == &e);

  const void *elem = buff[6];
  owi_assert(elem == &f);

  teardown_tests();
  return 0;
}
