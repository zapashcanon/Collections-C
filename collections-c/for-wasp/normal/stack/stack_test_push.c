#include "stack.h"
#include <wasp.h>

static Stack *s;

void setup_tests() { stack_new(&s); }

void teardown_tests() { stack_destroy(s); }

int main() {
    setup_tests();

    int a = __WASP_symb_int("a");
    int b = __WASP_symb_int("b");
    int c = __WASP_symb_int("c");

    int *p;

    stack_push(s, (void *)&a);
    stack_peek(s, (void *)&p);
    __WASP_assert(&a == p);

    stack_push(s, (void *)&b);
    stack_peek(s, (void *)&p);
    __WASP_assert(&b == p);

    stack_push(s, (void *)&c);
    stack_peek(s, (void *)&p);
    __WASP_assert(&c == p);

    teardown_tests();
    return 0;
}
