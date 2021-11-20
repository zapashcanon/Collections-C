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

    int r = __WASP_symb_int("r");
    array_add(v1, &a);
    array_add(v1, &b);
    array_add(v1, &c);

    array_replace_at(v1, &r, 2, NULL);

    int *repl;
    array_get_at(v1, 2, (void *)&repl);

    __WASP_assert(*repl != c);
    __WASP_assert(*repl == r);

    array_destroy(v1);

    return 0;
}
