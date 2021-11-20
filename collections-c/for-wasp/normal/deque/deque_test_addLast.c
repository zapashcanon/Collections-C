#include "deque.h"
#include <wasp.h>

static Deque *deque;
static DequeConf conf;
int stat;

void setup_tests() { stat = deque_new(&deque); }

void teardown_tests() { deque_destroy(deque); }

int main() {
    setup_tests();

    int a = __WASP_symb_int("a");
    int b = __WASP_symb_int("b");
    int c = __WASP_symb_int("c");

    deque_add_last(deque, &a);
    deque_add_last(deque, &b);
    deque_add_last(deque, &c);

    __WASP_assert(3 == deque_size(deque));

    const void *const *u = deque_get_buffer(deque);
    const void *e = u[0];

    __WASP_assert(e == &a);

    e = u[1];
    __WASP_assert(e == &b);

    e = u[2];
    __WASP_assert(e == &c);

    teardown_tests();
    return 0;
}
