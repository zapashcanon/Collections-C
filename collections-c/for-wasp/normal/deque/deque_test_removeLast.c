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

    deque_add_first(deque, &a);
    deque_add_first(deque, &b);
    deque_add_last(deque, &c);
    deque_add_last(deque, &d);

    int *last;
    deque_get_last(deque, (void *)&last);
    __WASP_assert(d == *last);

    int *removed;
    deque_remove_last(deque, (void *)&removed);
    __WASP_assert(d == *removed);

    deque_get_last(deque, (void *)&last);
    __WASP_assert(c == *last);

    teardown_tests();
    return 0;
}
