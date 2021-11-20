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

    __WASP_assume(x != y);

    treetable_add(table, &x, str_a);
    treetable_add(table, &y, str_b);

    char *ra;
    char *rb;

    treetable_get(table, &x, (void *)&ra);
    treetable_get(table, &y, (void *)&rb);

    __WASP_assert(strcmp(ra, str_a) == 0);
    __WASP_assert(strcmp(rb, str_b) == 0);

    treetable_destroy(table);
}
