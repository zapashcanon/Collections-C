#include "treetable.h"
#include "utils.h"
#include <wasp.h>

static TreeTable *table;

int main() {
    treetable_new(cmp, &table);

    int x = __WASP_symb_int("x");
    int y = __WASP_symb_int("y");
    int z = __WASP_symb_int("z");

    int a = __WASP_symb_int("a");

    char str_a[] = {a, '\0'};

    int b = __WASP_symb_int("b");

    char str_b[] = {b, '\0'};

    int c = __WASP_symb_int("c");

    char str_c[] = {c, '\0'};

    __WASP_assume(x != y && x != z && y != z);

    treetable_add(table, &x, str_a);
    treetable_add(table, &y, str_b);
    treetable_add(table, &z, str_c);

    __WASP_assert(treetable_size(table) == 3);

    treetable_destroy(table);
}
