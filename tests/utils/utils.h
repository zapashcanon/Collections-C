#ifndef TEST_UTILS_H
#define TEST_UTILS_H

 __attribute__((import_module("symbolic"), import_name("i32_symbol"))) int symbol();
 __attribute__((import_module("symbolic"), import_name("assume"))) void assume(int);
 __attribute__((import_module("symbolic"), import_name("assert"))) void assert(int);

#define symb_str(X)                          \
    int X = symbol();                      \
    char str_##X[] = {X, '\0'}

void CHECK_EQUAL_C_STRING(char *s1, char *s2);

void *copy(void *e1);

int cmp(void const *e1, void const *e2);

int zero_if_ptr_eq(void const *e1, void const *e2);

#endif /* TEST_UTILS_H */
