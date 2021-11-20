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
    deque_add_last(deque, &b);
    deque_add_last(deque, &c);
    deque_add_last(deque, &d);

    int *first;
    deque_get_first(deque, (void *)&first);
    __WASP_assert(a == *first);

    int *removed;
    deque_remove_first(deque, (void *)&removed);
    __WASP_assert(a == *removed);

    deque_get_first(deque, (void *)&first);
    __WASP_assert(b == *first);

    teardown_tests();
    return 0;
}
