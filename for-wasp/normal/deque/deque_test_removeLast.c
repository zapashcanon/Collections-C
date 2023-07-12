#include "deque.h"



static Deque *deque;
static DequeConf conf;
int stat;

void setup_tests() { stat = deque_new(&deque); }

void teardown_tests() { deque_destroy(deque); }

int main() {
    setup_tests();

    int a = symbol();
    int b = symbol();
    int c = symbol();
    int d = symbol();

    deque_add_first(deque, &a);
    deque_add_first(deque, &b);
    deque_add_last(deque, &c);
    deque_add_last(deque, &d);

    int *last;
    deque_get_last(deque, (void *)&last);
    assert(d == *last);

    int *removed;
    deque_remove_last(deque, (void *)&removed);
    assert(d == *removed);

    deque_get_last(deque, (void *)&last);
    assert(c == *last);

    teardown_tests();
    return 0;
}
