#include "treeset.h"
#include "utils.h"
#include <wasp.h>

static TreeSet *set;

int main() {
    treeset_new(cmp, &set);

    int a = __WASP_symb_int("a");
    int b = __WASP_symb_int("b");
    int c = __WASP_symb_int("c");
    __WASP_assume(a != b && a != c && b != c);

    treeset_add(set, &a);
    treeset_add(set, &b);
    treeset_add(set, &c);
    treeset_add(set, &c);

    __WASP_assert(3 == treeset_size(set));
    __WASP_assert(1 == treeset_contains(set, &a));
    __WASP_assert(1 == treeset_contains(set, &b));
}
