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

    stack_push(s, (void *)&a);
    stack_push(s, (void *)&b);
    stack_push(s, (void *)&c);

    int *pop;
    int *peek;

    stack_pop(s, (void *)&pop);
    __WASP_assert(&c == pop);

    stack_peek(s, (void *)&peek);
    __WASP_assert(&b == peek);

    teardown_tests();
    return 0;
}
