#include "owi.h"
#include "stack.h"

static Stack *s;

void setup_tests() { stack_new(&s); }

void teardown_tests() { stack_destroy(s); }

int main() {
  setup_tests();

  int a = owi_int();
  int b = owi_int();
  int c = owi_int();

  int *p;

  stack_push(s, (void *)&a);
  stack_peek(s, (void *)&p);
  owi_assert(&a == p);

  stack_push(s, (void *)&b);
  stack_peek(s, (void *)&p);
  owi_assert(&b == p);

  stack_push(s, (void *)&c);
  stack_peek(s, (void *)&p);
  owi_assert(&c == p);

  teardown_tests();
  return 0;
}
