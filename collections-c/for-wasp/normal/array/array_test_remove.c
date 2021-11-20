#include "array.h"
#include <wasp.h>

static Array *v1;
static Array *v2;
static ArrayConf vc;
static int stat;

int main() {
    stat = array_new(&v1);
    int n = __WASP_symb_int("n");
    __WASP_assume(n > 2);
    __WASP_assume(n < 16);

    int *last;
    int *next_to_last;

    for (int i = 0; i < n; i++) {
        int *a = malloc(sizeof(int));
        array_add(v1, a);
        next_to_last = last;
        last = a;
    }

    array_remove(v1, next_to_last, NULL);

    __WASP_assert(array_size(v1) < n);

    array_destroy(v1);

    return 0;
}
