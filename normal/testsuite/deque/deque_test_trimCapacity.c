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

  deque_add(deque, &a);
  deque_add(deque, &b);
  deque_add(deque, &c);

  owi_assert(8 == deque_capacity(deque));

  deque_trim_capacity(deque);

  owi_assert(4 == deque_capacity(deque));

  teardown_tests();
  return 0;
}
