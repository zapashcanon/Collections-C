#include "treetable.h"
#include "utils.h"



static TreeTable *table;

int main() {
    treetable_new(cmp, &table);

    int x = symbol();
    int y = symbol();
    int z = symbol();

    int a = symbol();

    char str_a[] = {a, '\0'};

    int b = symbol();

    char str_b[] = {b, '\0'};

    int c = symbol();

    char str_c[] = {c, '\0'};

    assume(a < b);
    assume(b < c);

    treetable_add(table, &x, str_a);
    treetable_add(table, &y, str_b);
    treetable_add(table, &z, str_c);

    assert(1 == treetable_contains_key(table, &x));
    assert(1 == treetable_contains_key(table, &z));

    treetable_destroy(table);
}
void _start() { main(); }
