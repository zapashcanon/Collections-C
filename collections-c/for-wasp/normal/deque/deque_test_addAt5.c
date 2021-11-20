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
    int d = __WASP_symb_int("d");
    int e = __WASP_symb_int("e");
    int f = __WASP_symb_int("f");
    int g = __WASP_symb_int("g");

    deque_add_last(deque, &a);
    deque_add_last(deque, &b);
    deque_add_last(deque, &c);
    deque_add_last(deque, &d);
    deque_add_last(deque, &e);
    deque_add_last(deque, &f);

    deque_add_at(deque, &g, 1);

    const void *const *buff = deque_get_buffer(deque);
    const int elem = *((int *)buff[7]);

    __WASP_assert(elem == a);

    const int elem1 = *((int *)buff[0]);
    __WASP_assert(elem1 == b);

    const int elem2 = *((int *)buff[5]);
    __WASP_assert(elem2 == f);

    const int elem3 = *((int *)buff[1]);
    __WASP_assert(elem3 == g);

    teardown_tests();
    return 0;
}
