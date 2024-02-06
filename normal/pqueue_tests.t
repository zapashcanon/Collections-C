Pqueue tests:
  $ owi c -I include src/pqueue.c src/common.c src/utils.c testsuite/pqueue/pqueue_test_enqueue.c
  Trap: memory heap buffer overflow
  Model:
    (model
      (symbol_4 (i32 -6029311))
      (symbol_5 (i32 -6291856)))
  Reached problem!
  [1]
  $ owi c -I include src/pqueue.c src/common.c src/utils.c testsuite/pqueue/pqueue_test_pop.c
  Trap: memory heap buffer overflow
  Model:
    (model
      (symbol_6 (i32 3))
      (symbol_7 (i32 -8388607))
      (symbol_8 (i32 -8388606)))
  Reached problem!
  [1]
