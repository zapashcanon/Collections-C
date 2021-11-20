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

    int x = __WASP_symb_int("x");
    __WASP_assume(x > 0); __WASP_assume(x < 127);
    char str_x[] = {x, '\0'};

    int y = __WASP_symb_int("y");
    __WASP_assume(y > 0); __WASP_assume(y < 127);
    char str_y[] = {y, '\0'};

    __WASP_assume(b != a && b != c && b != d);
    __WASP_assume(h != a && h != b && h != c && h != d);
    __WASP_assume(c != a && c != d);
    __WASP_assume(i != e && i != f && i != g);

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
    while (slist_zip_iter_next(&zip, &e1, &e2) != CC_ITER_END) {
        if (strcmp((char *)e1, str_b) == 0)
            slist_zip_iter_add(&zip, str_h, str_i);
    }

    size_t index;
    slist_index_of(list, str_h, &index);
    __WASP_assert(2 == index);

    slist_index_of(list2, str_i, &index);
    __WASP_assert(2 == index);

    slist_index_of(list, str_c, &index);
    __WASP_assert(3 == index);

    __WASP_assert(1 == slist_contains(list, str_h));
    __WASP_assert(1 == slist_contains(list2, str_i));
    __WASP_assert(5 == slist_size(list));
    __WASP_assert(4 == slist_size(list2));

    slist_zip_iter_init(&zip, list, list2);
    while (slist_zip_iter_next(&zip, &e1, &e2) != CC_ITER_END) {
        if (strcmp((char *)e2, str_g) == 0)
            slist_zip_iter_add(&zip, str_x, str_y);
    }

    char *last;
    slist_get_last(list2, (void *)&last);
    __WASP_assert(str_y == last);

    slist_get_last(list, (void *)&last);
    __WASP_assert(str_d == last);

    teardown_test();
    return 0;
}
