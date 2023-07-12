#include "deque.h"
#include "utils.h"



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

    deque_add(deque, &a);
    deque_add(deque, &b);
    deque_add(deque, &c);
    deque_add(deque, &d);
    deque_add(deque, &e);
    deque_add(deque, &f);
    deque_add(deque, &a);

    assert(2 == deque_contains(deque, &a));
    assert(0 == deque_contains(deque, &g));
    assert(1 == deque_contains(deque, &e));

    teardown_tests();
    return 0;
}
