#include "deque.h"
#include "owi.h"
#include "utils.h"

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

  deque_add(deque, &a);
  deque_add(deque, &b);
  deque_add(deque, &c);
  deque_add(deque, &d);
  deque_add(deque, &e);
  deque_add(deque, &f);
  deque_add(deque, &a);

  owi_assert(2 == deque_contains(deque, &a));
  owi_assert(0 == deque_contains(deque, &g));
  owi_assert(1 == deque_contains(deque, &e));

  teardown_tests();
  return 0;
}
