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

    __WASP_assert(list1 != NULL);
    __WASP_assert(list2 != NULL);

    void *e = NULL;
    list_get_first(list1, &e);
    __WASP_assert(e == NULL);

    list_get_last(list1, &e);
    __WASP_assert(e == NULL);

    __WASP_assert(0 == list_size(list1));
    __WASP_assert(list1 != list2);

    teardown_test();
}
