#include "treetable.h"
#include "utils.h"
#include <wasp.h>

static TreeTable *table;

int main() {
    treetable_new(cmp, &table);

    int x = __WASP_symb_int("x");
    int y = __WASP_symb_int("y");
    int z = __WASP_symb_int("z");
    int w = __WASP_symb_int("w");

    int a = __WASP_symb_int("a");

    char str_a[] = {a, '\0'};

    int b = __WASP_symb_int("b");

    char str_b[] = {b, '\0'};

    int c = __WASP_symb_int("c");

    char str_c[] = {c, '\0'};

    int d = __WASP_symb_int("d");

    char str_d[] = {d, '\0'};

    __WASP_assume(x < y && y < z && z < w);

    treetable_add(table, &z, str_a);
    treetable_add(table, &w, str_b);
    treetable_add(table, &y, str_c);
    treetable_add(table, &x, str_d);

    int *g;
    treetable_get_greater_than(table, &y, (void *)&g);

    __WASP_assert(z == *g);

    treetable_destroy(table);
}
