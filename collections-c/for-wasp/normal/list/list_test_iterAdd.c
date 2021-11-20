#include "list.h"
#include <wasp.h>

static List *list1;
static List *list2;

int a, b, c, d, e, f, g, h;

void setup_tests() {
    list_new(&list1), list_new(&list2);

    a = __WASP_symb_int("a");
    b = __WASP_symb_int("b");
    c = __WASP_symb_int("c");
    d = __WASP_symb_int("d");
    e = __WASP_symb_int("e");
    f = __WASP_symb_int("f");
    g = __WASP_symb_int("g");
    h = __WASP_symb_int("h");

    int *va = (int *)malloc(sizeof(int));
    int *vb = (int *)malloc(sizeof(int));
    int *vc = (int *)malloc(sizeof(int));
    int *vd = (int *)malloc(sizeof(int));

    *va = a;
    *vb = b;
    *vc = c;
    *vd = d;

    list_add(list1, va);
    list_add(list1, vb);
    list_add(list1, vc);
    list_add(list1, vd);

    va = (int *)malloc(sizeof(int));
    vb = (int *)malloc(sizeof(int));
    vc = (int *)malloc(sizeof(int));
    vd = (int *)malloc(sizeof(int));

    *va = e;
    *vb = f;
    *vc = g;
    *vd = h;

    list_add(list2, va);
    list_add(list2, vb);
    list_add(list2, vc);
    list_add(list2, vd);
}

void teardown_test() {
    list_destroy_cb(list1, free);
    list_destroy(list2);
}

int main() {
    setup_tests();

    int i = __WASP_symb_int("i");
    int *ins = (int *)malloc(sizeof(int));
    *ins = i;

    __WASP_assume(i != d);

    ListIter iter;
    list_iter_init(&iter, list1);

    __WASP_assume(c != a && c != b && c != d && d != a && d != b);

    int *el;
    while (list_iter_next(&iter, (void *)&el) != CC_ITER_END) {
        if (*el == c)
            list_iter_add(&iter, ins);
    }

    __WASP_assert(5 == list_size(list1));

    int *li3;
    list_get_at(list1, 3, (void *)&li3);

    __WASP_assert(*li3 == *ins);

    int *li4;
    list_get_at(list1, 4, (void *)&li4);
    __WASP_assert(d == *li4);

    list_iter_init(&iter, list1);

    int x = __WASP_symb_int("x");
    ins = (int *)malloc(sizeof(int));
    *ins = x;

    while (list_iter_next(&iter, (void *)&el) != CC_ITER_END) {
        if (*el == d) {
            list_iter_add(&iter, ins);
        }
    }

    void *e;
    list_get_last(list1, &e);
    __WASP_assert(*ins == *((int *)e));

    teardown_test();
}
