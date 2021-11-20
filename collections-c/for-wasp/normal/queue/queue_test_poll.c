#include "queue.h"
#include <wasp.h>

static Queue *q;
static Queue *q2;
static int stat;

void setup_test() {
    stat = queue_new(&q);
    queue_new(&q2);
}

void teardown_test() {
    queue_destroy(q);
    queue_destroy(q2);
}

int main() {
    setup_test();

    int a = __WASP_symb_int("a");
    int b = __WASP_symb_int("b");
    int c = __WASP_symb_int("c");

    queue_enqueue(q, &a);
    queue_enqueue(q, &b);
    queue_enqueue(q, &c);

    void *p;

    queue_poll(q, &p);
    __WASP_assert(&a == p);

    queue_peek(q, &p);
    __WASP_assert(&b == p);

    queue_poll(q, &p);
    __WASP_assert(&b == p);

    queue_peek(q, &p);
    __WASP_assert(&c == p);

    teardown_test();
    return 0;
}
