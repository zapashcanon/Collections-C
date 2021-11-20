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

    __WASP_assert(2 == queue_size(q));

    void *p;
    queue_peek(q, &p);
    __WASP_assert(&a == p);

    queue_enqueue(q, &c);

    queue_peek(q, &p);
    __WASP_assert(&a == p);

    teardown_test();
    return 0;
}
