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
    deque_add_first(deque, &c);
    deque_add_first(deque, &d);
    deque_add_first(deque, &e);
    deque_add_first(deque, &f);

    deque_add_at(deque, &g, 1);

    const void *const *buff = deque_get_buffer(deque);
    const void *elem = buff[5];

    __WASP_assert(elem == &g);

    const void *elem1 = buff[0];
    __WASP_assert(elem1 == &a);

    const void *elem2 = buff[7];
    __WASP_assert(elem2 == &c);

    const void *elem3 = buff[3];
    __WASP_assert(elem3 == &f);

    teardown_tests();
    return 0;
}
