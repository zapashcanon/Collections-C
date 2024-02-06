Array tests:
  $ owi c -I include testsuite/array/array_test_add.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_addAt2.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_contains.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_deepCopy.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_getAt.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_indexOf.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_iterAdd.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_iterRemove.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_iterReplace.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_reduce.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_remove.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_removeAll.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_removeAt.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_replaceAt.c src/array.c src/common.c src/utils.c
  Assert failure: (i32.ne symbol_3 symbol_2)
  Model:
    (model
      (symbol_2 (i32 0))
      (symbol_3 (i32 0)))
  Reached problem!
  [1]
  $ owi c -I include testsuite/array/array_test_reverse.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_shallowCopy.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_subarray.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_zipIterAdd.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_zipIterNext.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_zipIterRemove.c src/array.c src/common.c src/utils.c
  All OK
  $ owi c -I include testsuite/array/array_test_zipIterReplace.c src/array.c src/common.c src/utils.c
  All OK
