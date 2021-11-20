#include "array.h"
#include <wasp.h>

static Array *v1;
static Array *v2;
static ArrayConf vc;
static int stat;

int main() {
    stat = array_new(&v1);

    int a = __WASP_symb_int("a");
    int b = __WASP_symb_int("b");
    int c = __WASP_symb_int("c");
    int e = __WASP_symb_int("e");

    array_add(v1, &a);
    array_add(v1, &b);
    array_add(v1, &c);
    array_add(v1, &e);

    int *ar;
    int *cr;
    array_get_at(v1, 0, (void *)&ar);
    array_get_at(v1, 2, (void *)&cr);

    __WASP_assert(a == *ar);
    __WASP_assert(c == *cr);

    array_destroy(v1);

    return 0;
}
