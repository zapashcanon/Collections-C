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

  deque_add(deque, &a);
  deque_add(deque, &b);
  deque_add(deque, &c);
  deque_add(deque, &d);
  deque_add(deque, &e);
  deque_add(deque, &f);

  owi_assume(d != a && d != b && d != c && d != e && d != f);

  DequeIter iter;
  deque_iter_init(&iter, deque);

  size_t i = 0;

  void *el;
  while (deque_iter_next(&iter, &el) != CC_ITER_END) {
    void *k;
    deque_get_at(deque, i, &k);
    owi_assert(k == el);
    i++;

    owi_assert(i == iter.index);
  }

  teardown_tests();
  return 0;
}
