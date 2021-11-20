#include "list.h"
#include "utils.h"
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

    __WASP_assume(a != b && a != c && a != d && b != c && b != d && c != d);

    list_add(list1, &a);
    list_add(list1, &b);
    list_add(list1, &c);
    list_add(list1, &d);

    size_t idx;
    list_index_of(list1, &a, zero_if_ptr_eq, &idx);
    __WASP_assert(0 == idx);

    list_index_of(list1, &c, zero_if_ptr_eq, &idx);
    __WASP_assert(2 == idx);

    teardown_test();
}
