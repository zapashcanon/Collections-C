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

    int r = __WASP_symb_int("r");
    int *rr = (int *)malloc(sizeof(int));

    *rr = r;

    int *e;
    list_replace_at(list1, rr, 2, (void *)&e);
    free(e);

    list_get_at(list1, 2, (void *)&e);
    __WASP_assert((int *)rr == e);

    teardown_test();
}
