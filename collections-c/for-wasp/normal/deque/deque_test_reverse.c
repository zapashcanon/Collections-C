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

    deque_add(deque, &a);
    deque_add(deque, &b);
    deque_add(deque, &c);

    deque_reverse(deque);

    int *ra;
    deque_get_at(deque, 0, (void *)&ra);
    int *rb;
    deque_get_at(deque, 1, (void *)&rb);
    int *rc;
    deque_get_at(deque, 2, (void *)&rc);

    __WASP_assert(c == *ra);
    __WASP_assert(b == *rb);
    __WASP_assert(a == *rc);

    teardown_tests();
    return 0;
}