#include "ring_buffer.h"
#include "utils.h"
#include <wasp.h>

static int stat;
static Rbuf *rbuf;

void setup_test() { stat = rbuf_new(&rbuf); }

void teardown_test() { rbuf_destroy(rbuf); }

int main() {
    setup_test();

    uint64_t items[10];
    int a = __WASP_symb_int("a");
    char str_a[] = {a, '\0'};

    int b = __WASP_symb_int("b");
    char str_b[] = {b, '\0'};

    int c = __WASP_symb_int("c");
    char str_c[] = {c, '\0'};

    int d = __WASP_symb_int("d");
    char str_d[] = {d, '\0'};

    int e = __WASP_symb_int("e");
    char str_e[] = {e, '\0'};

    int f = __WASP_symb_int("f");
    char str_f[] = {f, '\0'};

    int g = __WASP_symb_int("g");
    char str_g[] = {g, '\0'};

    int h = __WASP_symb_int("h");
    char str_h[] = {h, '\0'};

    int i = __WASP_symb_int("i");
    char str_i[] = {i, '\0'};

    int j = __WASP_symb_int("j");
    char str_j[] = {j, '\0'};
    rbuf_enqueue(rbuf, a);
    rbuf_enqueue(rbuf, b);
    rbuf_enqueue(rbuf, c);
    rbuf_enqueue(rbuf, d);
    rbuf_enqueue(rbuf, e);
    rbuf_enqueue(rbuf, f);
    rbuf_enqueue(rbuf, g);
    rbuf_enqueue(rbuf, h);
    rbuf_enqueue(rbuf, i);
    rbuf_enqueue(rbuf, j);
    memset(items, 0, sizeof(uint64_t) * 10);
    items[0] = a;
    items[1] = b;
    items[2] = c;
    items[3] = d;
    items[4] = e;
    items[5] = f;
    items[6] = g;
    items[7] = h;
    items[8] = i;
    items[9] = j;

    __WASP_assert(items[0] == rbuf_peek(rbuf, 0));
    __WASP_assert(items[1] == rbuf_peek(rbuf, 1));

    int x = __WASP_symb_int("x");
    char str_x[] = {x, '\0'};

    int y = __WASP_symb_int("y");
    char str_y[] = {y, '\0'};

    rbuf_enqueue(rbuf, str_x);
    rbuf_enqueue(rbuf, str_y);

    __WASP_assert(rbuf_peek(rbuf, 0) == str_x);
    __WASP_assert(rbuf_peek(rbuf, 1) == str_y);
    uint64_t out;
    rbuf_dequeue(rbuf, &out);
    __WASP_assert(items[2] == out);

    teardown_test();
    return 0;
}
