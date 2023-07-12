#include "treetable.h"
#include "utils.h"



static TreeTable *table;

int main() {
    treetable_new(cmp, &table);

    int x = symbol();
    int y = symbol();
    int z = symbol();
    int w = symbol();

    int a = symbol();

    char str_a[] = {a, '\0'};

    int b = symbol();

    char str_b[] = {b, '\0'};

    int c = symbol();

    char str_c[] = {c, '\0'};

    int d = symbol();

    char str_d[] = {d, '\0'};

    assume(x < y && y < z && z < w);

    treetable_add(table, &z, str_a);
    treetable_add(table, &w, str_b);
    treetable_add(table, &y, str_c);
    treetable_add(table, &x, str_d);

    int *g;
    treetable_get_greater_than(table, &y, (void *)&g);

    assert(z == *g);

    treetable_destroy(table);
}
