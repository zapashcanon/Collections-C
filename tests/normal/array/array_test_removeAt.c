#include "array.h"



static Array *v1;
static Array *v2;
static ArrayConf vc;
static int stat;

int main() {
    stat = array_new(&v1);
    int a = symbol();
    int b = symbol();
    int c = symbol();
    int e = symbol();

    array_add(v1, &a);
    array_add(v1, &b);
    array_add(v1, &c);
    array_add(v1, &e);

    array_remove_at(v1, 2, NULL);

    assert(3 == array_size(v1));

    int *r;
    array_get_at(v1, 2, (void *)&r);

    assert(r == &e);

    array_destroy(v1);

    return 0;
}
void _start() { main(); }
