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

    array_add(v1, &a);
    array_add(v1, &b);
    array_add(v1, &c);

    array_copy_shallow(v1, &v2);

    __WASP_assert(array_size(v2) == array_size(v1));

    int *ga;
    int *gb;
    array_get_at(v1, 2, (void *)&ga);
    array_get_at(v2, 2, (void *)&gb);

    __WASP_assert(*ga == *gb);

    array_destroy(v2);

    array_destroy(v1);

    return 0;
}
