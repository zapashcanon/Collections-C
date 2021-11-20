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
    int b = __WASP_symb_int("b");
    int c = __WASP_symb_int("c");
    int d = __WASP_symb_int("d");

    int p = __WASP_symb_int("p");

    slist_add(list, &a);
    slist_add(list, &b);
    slist_add(list, &c);
    slist_add(list, &d);

    __WASP_assert(4 == slist_size(list));

    int *last;
    slist_get_last(list, (void *)&last);
    __WASP_assert(d == *last);

    slist_add_last(list, &p);
    __WASP_assert(5 == slist_size(list));

    slist_get_last(list, (void *)&last);
    __WASP_assert(p == *last);

    teardown_test();
    return 0;
}
