#include "list.h"



static List *list1;
static List *list2;

void setup_tests() { list_new(&list1), list_new(&list2); }

void teardown_test() {
    list_destroy(list1);
    list_destroy(list2);
}

int main() {
    setup_tests();

    int a = symbol();
    char str_a[] = {a, '\0'};

    int b = symbol();
    char str_b[] = {b, '\0'};

    int c = symbol();
    char str_c[] = {c, '\0'};

    int d = symbol();
    char str_d[] = {d, '\0'};

    assert(CC_OK == list_add(list1, str_a));
    assert(CC_OK == list_add(list1, str_b));
    assert(CC_OK == list_add(list1, str_c));
    assert(CC_OK == list_add(list1, str_d));

    void *e;
    list_get_first(list1, &e);
    assert(e != NULL);

    list_get_last(list1, &e);
    assert(e != NULL);

    teardown_test();
}
