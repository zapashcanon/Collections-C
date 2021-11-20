#include "deque.h"
#include <wasp.h>

static Deque *deque;
static DequeConf conf;
int stat;

void setup_tests() { stat = deque_new(&deque); }

void teardown_tests() { deque_destroy(deque); }

bool pred1(const void *e) { return *(int *)e <= 3; }

bool pred2(const void *e) { return *(int *)e > 3; }

bool pred3(const void *e) { return *(int *)e > 5; }

int main() {
    setup_tests();

    int a = __WASP_symb_int("a");
    int b = __WASP_symb_int("b");
    int c = __WASP_symb_int("c");
    int d = __WASP_symb_int("d");
    int e = __WASP_symb_int("e");
    int f = __WASP_symb_int("f");

    __WASP_assume(!pred1(&d) && !pred1(&e) && !pred1(&f) && pred1(&a) && pred1(&b) &&
           pred1(&c));

    deque_add_last(deque, (void*)&a);
    deque_add_last(deque, (void*)&b);
    deque_add_last(deque, (void*)&c);
    deque_add_last(deque, (void*)&d);
    deque_add_last(deque, (void*)&e);
    deque_add_last(deque, (void*)&f);
    __WASP_assert(6 == deque_size(deque));

    Deque *filter = NULL;
    deque_filter(deque, pred1, &filter);
    __WASP_assert(3 == deque_size(filter));
    const void *const *buff = deque_get_buffer(filter);

    __WASP_assert(buff[0] == &a);
    __WASP_assert(buff[1] == &b);

    const void *elem = buff[2];
    __WASP_assert(elem == &c);
    free(filter);

    teardown_tests();
    return 0;
}
