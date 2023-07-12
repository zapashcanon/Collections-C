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
    int e = symbol();
    int f = symbol();
    int g = symbol();

    deque_add_last(deque, &a);
    deque_add_last(deque, &b);
    deque_add_first(deque, &c);
    deque_add_first(deque, &d);
    deque_add_first(deque, &e);
    deque_add_first(deque, &f);

    deque_add_at(deque, &g, 1);

    const void *const *buff = deque_get_buffer(deque);
    const void *elem = buff[5];

    assert(elem == &g);

    const void *elem1 = buff[0];
    assert(elem1 == &a);

    const void *elem2 = buff[7];
    assert(elem2 == &c);

    const void *elem3 = buff[3];
    assert(elem3 == &f);

    teardown_tests();
    return 0;
}
void _start() { main(); }
