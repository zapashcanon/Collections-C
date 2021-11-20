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

    deque_add(deque, &a);
    deque_add(deque, &b);
    deque_add(deque, &c);
    deque_add(deque, &d);
    deque_add(deque, &e);
    deque_add(deque, &f);

    if (!(d != a && d != b && d != c && d != e && d != f))
      return 0;

    DequeIter iter;
    deque_iter_init(&iter, deque);

    size_t i = 0;
    void *el;
    while (deque_iter_next(&iter, &el) != CC_ITER_END) {
        if (i == 3)
            deque_iter_remove(&iter, NULL);

        if (i > 2) {
            __WASP_assert(5 == deque_size(deque));
        } else {
            __WASP_assert(6 == deque_size(deque));
        }
        if (i >= 3) {
            __WASP_assert(i - 1 == deque_iter_index(&iter));
        }
        i++;
    }

    teardown_tests();
    return 0;
}
