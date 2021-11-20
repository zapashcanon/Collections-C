#include "list.h"
#include <wasp.h>

static List *list1;
static List *list2;

void setup_tests() { list_new(&list1), list_new(&list2); }

void teardown_test() {
    list_destroy(list1);
    list_destroy(list2);
}

int main() {
    setup_tests();

    int a = __WASP_symb_int("a");
    int b = __WASP_symb_int("b");
    int c = __WASP_symb_int("c");
    int d = __WASP_symb_int("d");
    int p = __WASP_symb_int("p");

    list_add(list1, &a);
    list_add(list1, &b);
    list_add(list1, &c);
    list_add(list1, &d);

    __WASP_assert(4 == list_size(list1));

    int *last;
    list_get_last(list1, (void *)&last);
    __WASP_assert(d == *last);

    list_add_last(list1, &p);
    __WASP_assert(5 == list_size(list1));

    list_get_last(list1, (void *)&last);
    __WASP_assert(p == *last);

    teardown_test();
}
