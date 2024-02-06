Bug-triggering tests:
  $ owi c -I include src/array.c src/common.c src/utils.c testsuite/array_test_remove.c
  Trap: memory heap buffer overflow
  Model:
    (model
      (symbol_0 (i32 8)))
  Reached problem!
  [1]
  $ owi c -I include src/list.c src/common.c src/utils.c testsuite/list_test_zipIterAdd.c
  Assert failure: false
  Model:
    (model
      (symbol_0 (i32 32768))
      (symbol_1 (i32 134218240))
      (symbol_10 (i32 3))
      (symbol_2 (i32 512))
      (symbol_3 (i32 0))
      (symbol_4 (i32 0))
      (symbol_5 (i32 1))
      (symbol_6 (i32 2))
      (symbol_7 (i32 16))
      (symbol_8 (i32 4194304))
      (symbol_9 (i32 1)))
  Reached problem!
  [1]
