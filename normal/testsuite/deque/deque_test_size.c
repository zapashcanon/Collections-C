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

  deque_add(deque, &a);
  deque_add(deque, &b);
  deque_add(deque, &c);
  deque_add(deque, &d);

  size_t size = deque_size(deque);
  owi_assert(4 == size);

  teardown_tests();
  return 0;
}
