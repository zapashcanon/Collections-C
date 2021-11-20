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
    char str_a[] = {a, '\0'};

    int b = __WASP_symb_int("b");
    char str_b[] = {b, '\0'};

    int c = __WASP_symb_int("c");
    char str_c[] = {c, '\0'};

    int d = __WASP_symb_int("d");
    char str_d[] = {d, '\0'};

    __WASP_assert(CC_OK == list_add(list1, str_a));
    __WASP_assert(CC_OK == list_add(list1, str_b));
    __WASP_assert(CC_OK == list_add(list1, str_c));
    __WASP_assert(CC_OK == list_add(list1, str_d));

    void *e;
    list_get_first(list1, &e);
    __WASP_assert(e != NULL);

    list_get_last(list1, &e);
    __WASP_assert(e != NULL);

    teardown_test();
}
