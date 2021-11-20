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

    deque_add_at(deque, &g, 4);

    const void *const *buff = deque_get_buffer(deque);

    __WASP_assert(buff[4] == &g);

    __WASP_assert(buff[5] == &e);

    const void *elem = buff[6];
    __WASP_assert(elem == &f);

    teardown_tests();
    return 0;
}
