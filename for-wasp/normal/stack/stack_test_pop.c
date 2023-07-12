#include "stack.h"



static Stack *s;

void setup_tests() { stack_new(&s); }

void teardown_tests() { stack_destroy(s); }

int main() {
    setup_tests();

    int a = symbol();
    int b = symbol();
    int c = symbol();

    stack_push(s, (void *)&a);
    stack_push(s, (void *)&b);
    stack_push(s, (void *)&c);

    int *pop;
    int *peek;

    stack_pop(s, (void *)&pop);
    assert(&c == pop);

    stack_peek(s, (void *)&peek);
    assert(&b == peek);

    teardown_tests();
    return 0;
}
