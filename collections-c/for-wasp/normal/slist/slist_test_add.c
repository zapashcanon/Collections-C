#include "slist.h"
#include <wasp.h>

static SList *list;
static SList *list2;
static int stat;

void setup_test() {
    stat = slist_new(&list);
    slist_new(&list2);
};

void teardown_test() {
    slist_destroy(list);
    slist_destroy(list2);
};

int main() {
    setup_test();

    int a = __WASP_symb_int("a");

    char str_a[] = {a, '\0'};

    int b = __WASP_symb_int("b");

    char str_b[] = {b, '\0'};

    int c = __WASP_symb_int("c");

    char str_c[] = {c, '\0'};

    int d = __WASP_symb_int("d");

    char str_d[] = {d, '\0'};

    __WASP_assert(CC_OK == slist_add(list, str_a));
    __WASP_assert(CC_OK == slist_add(list, str_b));
    __WASP_assert(CC_OK == slist_add(list, str_c));
    __WASP_assert(CC_OK == slist_add(list, str_d));

    void *e;
    slist_get_first(list, &e);
    __WASP_assert(e != NULL);

    slist_get_last(list, &e);
    __WASP_assert(e != NULL);

    teardown_test();
    return 0;
}
