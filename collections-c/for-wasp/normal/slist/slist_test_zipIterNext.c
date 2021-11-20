#include "slist.h"
#include "utils.h"
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
    __WASP_assume(a > 0); __WASP_assume(a < 127);
    char str_a[] = {a, '\0'};

    int b = __WASP_symb_int("b");
    __WASP_assume(b > 0); __WASP_assume(b < 127);
    char str_b[] = {b, '\0'};

    int c = __WASP_symb_int("c");
    __WASP_assume(c > 0); __WASP_assume(c < 127);
    char str_c[] = {c, '\0'};

    int d = __WASP_symb_int("d");
    __WASP_assume(d > 0); __WASP_assume(d < 127);
    char str_d[] = {d, '\0'};

    int e = __WASP_symb_int("e");
    __WASP_assume(e > 0); __WASP_assume(e < 127);
    char str_e[] = {e, '\0'};

    int f = __WASP_symb_int("f");
    __WASP_assume(f > 0); __WASP_assume(f < 127);
    char str_f[] = {f, '\0'};

    int g = __WASP_symb_int("g");
    __WASP_assume(g > 0); __WASP_assume(g < 127);
    char str_g[] = {g, '\0'};

    slist_add(list, str_a);
    slist_add(list, str_b);
    slist_add(list, str_c);
    slist_add(list, str_d);

    slist_add(list2, str_e);
    slist_add(list2, str_f);
    slist_add(list2, str_g);

    SListZipIter zip;
    slist_zip_iter_init(&zip, list, list2);

    size_t i = 0;

    void *e1, *e2;
    while (slist_zip_iter_next(&zip, &e1, &e2) != CC_ITER_END) {
        if (i == 0) {
            CHECK_EQUAL_C_STRING(str_a, (char *)e1);
            CHECK_EQUAL_C_STRING(str_e, (char *)e2);
        }
        if (i == 2) {
            CHECK_EQUAL_C_STRING(str_c, (char *)e1);
            CHECK_EQUAL_C_STRING(str_g, (char *)e2);
        }
        i++;
    }
    __WASP_assert(3 == i);

    teardown_test();
    return 0;
}
