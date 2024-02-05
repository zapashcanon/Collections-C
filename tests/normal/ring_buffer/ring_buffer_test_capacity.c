#include "ring_buffer.h"
#include "utils.h"



static int stat;
static Rbuf *rbuf;

void setup_test() { stat = rbuf_new(&rbuf); }

void teardown_test() { rbuf_destroy(rbuf); }

int main() {
    setup_test();

    uint64_t items[10];
    int a = symbol();
    char str_a[] = {a, '\0'};

    int b = symbol();
    char str_b[] = {b, '\0'};

    int c = symbol();
    char str_c[] = {c, '\0'};

    int d = symbol();
    char str_d[] = {d, '\0'};

    int e = symbol();
    char str_e[] = {e, '\0'};

    int f = symbol();
    char str_f[] = {f, '\0'};

    int g = symbol();
    char str_g[] = {g, '\0'};

    int h = symbol();
    char str_h[] = {h, '\0'};

    int i = symbol();
    char str_i[] = {i, '\0'};

    int j = symbol();
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

    assert(items[0] == rbuf_peek(rbuf, 0));
    assert(items[1] == rbuf_peek(rbuf, 1));

    int x = symbol();
    char str_x[] = {x, '\0'};

    int y = symbol();
    char str_y[] = {y, '\0'};

    rbuf_enqueue(rbuf, str_x);
    rbuf_enqueue(rbuf, str_y);

    assert(rbuf_peek(rbuf, 0) == str_x);
    assert(rbuf_peek(rbuf, 1) == str_y);
    uint64_t out;
    rbuf_dequeue(rbuf, &out);
    assert(items[2] == out);

    teardown_test();
    return 0;
}
void _start() { main(); }
