#include "owi.h"
#include "treeset.h"
#include "utils.h"

static TreeSet *set;

int main() {
  treeset_new(cmp, &set);

  int a = owi_int();
  int b = owi_int();
  int c = owi_int();
  owi_assume(a != b && a != c && b != c);

  treeset_add(set, &a);
  treeset_add(set, &b);
  treeset_add(set, &c);

  treeset_remove(set, &a, NULL);

  owi_assert(2 == treeset_size(set));
  owi_assert(0 == treeset_contains(set, &a));
}
