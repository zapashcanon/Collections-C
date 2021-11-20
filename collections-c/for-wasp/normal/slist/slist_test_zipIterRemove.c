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

    int h = __WASP_symb_int("h");
    __WASP_assume(h > 0); __WASP_assume(h < 127);
    char str_h[] = {h, '\0'};

    int i = __WASP_symb_int("i");
    __WASP_assume(i > 0); __WASP_assume(i < 127);
    char str_i[] = {i, '\0'};

    __WASP_assume(b != a && b != c && b != d);
    __WASP_assume(f != e && f != g);
    __WASP_assume(e != g);
    // ASSUME(h != a && h != b && h != c && h != d);
    // ASSUME(c != a && c != d);
    // ASSUME(i != e && i != f && i != g);

    slist_add(list, str_a);
    slist_add(list, str_b);
    slist_add(list, str_c);
    slist_add(list, str_d);

    slist_add(list2, str_e);
    slist_add(list2, str_f);
    slist_add(list2, str_g);

    SListZipIter zip;
    slist_zip_iter_init(&zip, list, list2);

    void *e1, *e2;
    void *r1, *r2;
    while (slist_zip_iter_next(&zip, &e1, &e2) != CC_ITER_END) {
        if (strcmp((char *)e1, str_b) == 0)
            slist_zip_iter_remove(&zip, &r1, &r2);
    }

    CHECK_EQUAL_C_STRING(str_b, (char *)r1);
    CHECK_EQUAL_C_STRING(str_f, (char *)r2);
    __WASP_assert(0 == slist_contains(list, str_b));
    __WASP_assert(0 == slist_contains(list2, str_c));
    __WASP_assert(3 == slist_size(list));
    __WASP_assert(2 == slist_size(list2));

    slist_zip_iter_init(&zip, list, list2);
    while (slist_zip_iter_next(&zip, &e1, &e2) != CC_ITER_END) {
        if (strcmp((char *)e2, str_e) == 0)
            slist_zip_iter_remove(&zip, &r1, &r2);

        if (strcmp((char *)e2, str_g) == 0)
            slist_zip_iter_remove(&zip, &r1, &r2);
    }

    char *first = "";
    char *last = "";

    __WASP_assert(CC_ERR_VALUE_NOT_FOUND == slist_get_first(list2, (void *)&first));
    __WASP_assert(CC_ERR_VALUE_NOT_FOUND == slist_get_last(list2, (void *)&last));

    slist_get_first(list, (void *)&first);
    CHECK_EQUAL_C_STRING(str_d, first);

    slist_get_last(list, (void *)&last);
    CHECK_EQUAL_C_STRING(str_d, last);

    teardown_test();
    return 0;
}
