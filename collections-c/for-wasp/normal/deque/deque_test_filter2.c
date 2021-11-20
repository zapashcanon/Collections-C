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

    __WASP_assume(pred2(&d) && pred2(&e) && pred2(&f) && !pred2(&a) && !pred2(&b) &&
           !pred2(&c));

    deque_add_last(deque, &a);
    deque_add_last(deque, &b);
    deque_add_last(deque, &c);
    deque_add_last(deque, &d);
    deque_add_last(deque, &e);
    deque_add_last(deque, &f);
    __WASP_assert(6 == deque_size(deque));

    Deque *filter = NULL;
    deque_filter(deque, pred2, &filter);
    const void *const *buff = deque_get_buffer(filter);

    __WASP_assert(3 == deque_size(filter));
    __WASP_assert(buff[0] == &d);
    __WASP_assert(buff[1] == &e);
    __WASP_assert(buff[2] == &f);

    free(filter);

    teardown_tests();
    return 0;
}
