(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (func $setup_tests (type 3)
    i32.const 0
    i32.const 1044
    call $deque_new
    i32.store offset=1048)
  (func $teardown_tests (type 3)
    i32.const 0
    i32.load offset=1044
    call $deque_destroy)
  (func $__original_main (type 4) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 0
    i32.store offset=92
    call $setup_tests
    local.get 0
    i32.const 1036
    i32.symbolic
    i32.store offset=88
    local.get 0
    i32.load offset=88
    i32.const 0
    i32.gt_s
    i32.const 1
    i32.and
    sym_assume
    local.get 0
    i32.load offset=88
    i32.const 127
    i32.lt_s
    i32.const 1
    i32.and
    sym_assume
    local.get 0
    local.get 0
    i32.load offset=88
    i32.store8 offset=86
    local.get 0
    i32.const 0
    i32.store8 offset=87
    local.get 0
    i32.const 1034
    i32.symbolic
    i32.store offset=80
    local.get 0
    i32.load offset=80
    i32.const 0
    i32.gt_s
    i32.const 1
    i32.and
    sym_assume
    local.get 0
    i32.load offset=80
    i32.const 127
    i32.lt_s
    i32.const 1
    i32.and
    sym_assume
    local.get 0
    local.get 0
    i32.load offset=80
    i32.store8 offset=78
    local.get 0
    i32.const 0
    i32.store8 offset=79
    local.get 0
    i32.const 1032
    i32.symbolic
    i32.store offset=72
    local.get 0
    i32.load offset=72
    i32.const 0
    i32.gt_s
    i32.const 1
    i32.and
    sym_assume
    local.get 0
    i32.load offset=72
    i32.const 127
    i32.lt_s
    i32.const 1
    i32.and
    sym_assume
    local.get 0
    local.get 0
    i32.load offset=72
    i32.store8 offset=70
    local.get 0
    i32.const 0
    i32.store8 offset=71
    local.get 0
    i32.const 1030
    i32.symbolic
    i32.store offset=64
    local.get 0
    i32.load offset=64
    i32.const 0
    i32.gt_s
    i32.const 1
    i32.and
    sym_assume
    local.get 0
    i32.load offset=64
    i32.const 127
    i32.lt_s
    i32.const 1
    i32.and
    sym_assume
    local.get 0
    local.get 0
    i32.load offset=64
    i32.store8 offset=62
    local.get 0
    i32.const 0
    i32.store8 offset=63
    local.get 0
    i32.const 1028
    i32.symbolic
    i32.store offset=56
    local.get 0
    i32.load offset=56
    i32.const 0
    i32.gt_s
    i32.const 1
    i32.and
    sym_assume
    local.get 0
    i32.load offset=56
    i32.const 127
    i32.lt_s
    i32.const 1
    i32.and
    sym_assume
    local.get 0
    local.get 0
    i32.load offset=56
    i32.store8 offset=54
    local.get 0
    i32.const 0
    i32.store8 offset=55
    local.get 0
    i32.const 1026
    i32.symbolic
    i32.store offset=48
    local.get 0
    i32.load offset=48
    i32.const 0
    i32.gt_s
    i32.const 1
    i32.and
    sym_assume
    local.get 0
    i32.load offset=48
    i32.const 127
    i32.lt_s
    i32.const 1
    i32.and
    sym_assume
    local.get 0
    local.get 0
    i32.load offset=48
    i32.store8 offset=46
    local.get 0
    i32.const 0
    i32.store8 offset=47
    local.get 0
    i32.const 1024
    i32.symbolic
    i32.store offset=40
    local.get 0
    i32.load offset=40
    i32.const 0
    i32.gt_s
    i32.const 1
    i32.and
    sym_assume
    local.get 0
    i32.load offset=40
    i32.const 127
    i32.lt_s
    i32.const 1
    i32.and
    sym_assume
    local.get 0
    local.get 0
    i32.load offset=40
    i32.store8 offset=38
    local.get 0
    i32.const 0
    i32.store8 offset=39
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load offset=80
      local.get 0
      i32.load offset=88
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      local.get 0
      i32.load offset=80
      local.get 0
      i32.load offset=72
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=80
      local.get 0
      i32.load offset=64
      i32.ne
      local.set 1
    end
    local.get 1
    i32.const 1
    i32.and
    sym_assume
    i32.const 0
    i32.load offset=1044
    local.get 0
    i32.const 86
    i32.add
    call $deque_add
    drop
    i32.const 0
    i32.load offset=1044
    local.get 0
    i32.const 78
    i32.add
    call $deque_add
    drop
    i32.const 0
    i32.load offset=1044
    local.get 0
    i32.const 70
    i32.add
    call $deque_add
    drop
    i32.const 0
    i32.load offset=1044
    local.get 0
    i32.const 62
    i32.add
    call $deque_add
    drop
    local.get 0
    i32.const 32
    i32.add
    call $deque_new
    drop
    local.get 0
    i32.load offset=32
    local.get 0
    i32.const 54
    i32.add
    call $deque_add
    drop
    local.get 0
    i32.load offset=32
    local.get 0
    i32.const 46
    i32.add
    call $deque_add
    drop
    local.get 0
    i32.load offset=32
    local.get 0
    i32.const 38
    i32.add
    call $deque_add
    drop
    local.get 0
    i32.const 16
    i32.add
    i32.const 0
    i32.load offset=1044
    local.get 0
    i32.load offset=32
    call $deque_zip_iter_init
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 16
        i32.add
        local.get 0
        i32.const 12
        i32.add
        local.get 0
        i32.const 8
        i32.add
        call $deque_zip_iter_next
        i32.const 9
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.load offset=12
          local.get 0
          i32.const 78
          i32.add
          call $strcmp
          br_if 0 (;@3;)
          local.get 0
          i32.const 16
          i32.add
          local.get 0
          i32.const 4
          i32.add
          local.get 0
          call $deque_zip_iter_remove
          drop
        end
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 78
    i32.add
    local.get 0
    i32.load offset=4
    call $strcmp
    i32.const 0
    i32.eq
    i32.const 1
    i32.and
    sym_assert
    local.get 0
    i32.const 46
    i32.add
    local.get 0
    i32.load
    call $strcmp
    i32.const 0
    i32.eq
    i32.const 1
    i32.and
    sym_assert
    i32.const 0
    i32.const 0
    i32.load offset=1044
    local.get 0
    i32.const 78
    i32.add
    call $deque_contains
    i32.eq
    i32.const 1
    i32.and
    sym_assert
    i32.const 0
    i32.const 0
    i32.load offset=1044
    local.get 0
    i32.const 46
    i32.add
    call $deque_contains
    i32.eq
    i32.const 1
    i32.and
    sym_assert
    i32.const 3
    i32.const 0
    i32.load offset=1044
    call $deque_size
    i32.eq
    i32.const 1
    i32.and
    sym_assert
    i32.const 2
    local.get 0
    i32.load offset=32
    call $deque_size
    i32.eq
    i32.const 1
    i32.and
    sym_assert
    local.get 0
    i32.load offset=32
    call $deque_destroy
    call $teardown_tests
    local.get 0
    i32.const 96
    i32.add
    global.set 0
    i32.const 0)
  (func $strcmp (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=28
    local.get 2
    local.get 1
    i32.store offset=24
    local.get 2
    i32.const 0
    i32.store offset=16
    local.get 2
    local.get 2
    i32.load offset=28
    i32.store offset=12
    local.get 2
    local.get 2
    i32.load offset=24
    i32.store offset=8
    block  ;; label = @1
      local.get 2
      i32.load offset=12
      i32.const 0
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=8
      i32.const 0
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      i32.store offset=20
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.load offset=12
          i32.load8_u
          i32.const 24
          i32.shl
          i32.const 24
          i32.shr_s
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 2
            i32.load offset=12
            i32.load8_u
            i32.const 24
            i32.shl
            i32.const 24
            i32.shr_s
            local.get 2
            i32.load offset=8
            i32.load8_u
            i32.const 24
            i32.shl
            i32.const 24
            i32.shr_s
            i32.ne
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 1
            i32.store offset=16
          end
          local.get 2
          local.get 2
          i32.load offset=12
          i32.const 1
          i32.add
          i32.store offset=12
          local.get 2
          local.get 2
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 0 (;@3;)
        end
      end
    end
    local.get 2
    i32.load offset=16)
  (func $malloc (type 1) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 0
    i32.load offset=1040
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.load offset=4
        local.get 1
        i32.load offset=12
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        i32.load offset=1040
        local.get 1
        i32.load offset=4
        i32.add
        i32.const 105
        i32.store8
        local.get 1
        local.get 1
        i32.load offset=4
        i32.const 1
        i32.add
        i32.store offset=4
        br 0 (;@2;)
      end
    end
    i32.const 0
    i32.const 0
    i32.load offset=1040
    local.get 1
    i32.load offset=12
    i32.add
    i32.store offset=1040
    local.get 1
    i32.load offset=8
    local.get 1
    i32.load offset=12
    alloc
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func $calloc (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.const 0
    i32.load offset=1040
    i32.store offset=4
    local.get 2
    i32.const 0
    i32.store
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load
        local.get 2
        i32.load offset=12
        local.get 2
        i32.load offset=8
        i32.mul
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        i32.load offset=1040
        local.get 2
        i32.load
        i32.add
        i32.const 0
        i32.store8
        local.get 2
        local.get 2
        i32.load
        i32.const 1
        i32.add
        i32.store
        br 0 (;@2;)
      end
    end
    i32.const 0
    i32.const 0
    i32.load offset=1040
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.mul
    i32.add
    i32.store offset=1040
    local.get 2
    i32.load offset=4
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.mul
    alloc
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func $free (type 2) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    free
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func $memcpy (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    local.get 0
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 2
    i32.store offset=20
    local.get 3
    local.get 3
    i32.load offset=28
    i32.store offset=12
    local.get 3
    local.get 3
    i32.load offset=24
    i32.store offset=8
    block  ;; label = @1
      local.get 3
      i32.load offset=12
      i32.const 0
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=8
      i32.const 0
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 0
      i32.store offset=16
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=16
          local.get 3
          i32.load offset=20
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=12
          local.get 3
          i32.load offset=8
          i32.load8_u
          i32.store8
          local.get 3
          local.get 3
          i32.load offset=16
          i32.const 1
          i32.add
          i32.store offset=16
          local.get 3
          local.get 3
          i32.load offset=12
          i32.const 1
          i32.add
          i32.store offset=12
          local.get 3
          local.get 3
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 0 (;@3;)
        end
      end
    end
    local.get 3
    i32.load offset=28)
  (func $memmove (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    local.tee 4
    local.get 0
    i32.store offset=44
    local.get 4
    local.get 1
    i32.store offset=40
    local.get 4
    local.get 2
    i32.store offset=36
    local.get 4
    local.get 4
    i32.load offset=44
    i32.store offset=32
    local.get 4
    local.get 4
    i32.load offset=40
    i32.store offset=28
    local.get 4
    i32.load offset=36
    local.set 2
    local.get 4
    local.get 3
    i32.store offset=24
    local.get 3
    local.get 2
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    i32.sub
    local.tee 3
    drop
    local.get 4
    local.get 2
    i32.store offset=20
    local.get 4
    i32.const 0
    i32.store offset=16
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load offset=16
        local.get 4
        i32.load offset=36
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 4
        i32.load offset=16
        i32.add
        local.get 4
        i32.load offset=28
        local.get 4
        i32.load offset=16
        i32.add
        i32.load8_u
        i32.store8
        local.get 4
        local.get 4
        i32.load offset=16
        i32.const 1
        i32.add
        i32.store offset=16
        br 0 (;@2;)
      end
    end
    local.get 4
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load offset=12
        local.get 4
        i32.load offset=36
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=32
        local.get 4
        i32.load offset=12
        i32.add
        local.get 3
        local.get 4
        i32.load offset=12
        i32.add
        i32.load8_u
        i32.store8
        local.get 4
        local.get 4
        i32.load offset=12
        i32.const 1
        i32.add
        i32.store offset=12
        br 0 (;@2;)
      end
    end
    local.get 4
    i32.load offset=24
    drop
    local.get 4
    i32.load offset=44)
  (func $deque_new (type 1) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=28
    local.get 1
    i32.const 8
    i32.add
    call $deque_conf_init
    local.get 1
    i32.const 8
    i32.add
    local.get 1
    i32.load offset=28
    call $deque_new_conf
    local.set 0
    local.get 1
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func $deque_conf_init (type 2) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.const 8
    i32.store
    local.get 1
    i32.load offset=12
    i32.const 1
    i32.store offset=4
    local.get 1
    i32.load offset=12
    i32.const 2
    i32.store offset=8
    local.get 1
    i32.load offset=12
    i32.const 3
    i32.store offset=12)
  (func $deque_new_conf (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 1
    i32.const 32
    local.get 2
    i32.load offset=8
    i32.load offset=8
    call_indirect (type 0)
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 1
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 2
      i32.load offset=8
      i32.load
      i32.const 2
      i32.shl
      local.get 2
      i32.load offset=8
      i32.load offset=4
      call_indirect (type 1)
      local.set 1
      local.get 2
      i32.load
      local.get 1
      i32.store offset=16
      block  ;; label = @2
        local.get 1
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.load
        local.get 2
        i32.load offset=8
        i32.load offset=12
        call_indirect (type 2)
        local.get 2
        i32.const 1
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 2
      i32.load
      local.get 2
      i32.load offset=8
      i32.load offset=4
      i32.store offset=20
      local.get 2
      i32.load
      local.get 2
      i32.load offset=8
      i32.load offset=8
      i32.store offset=24
      local.get 2
      i32.load
      local.get 2
      i32.load offset=8
      i32.load offset=12
      i32.store offset=28
      local.get 2
      i32.load offset=8
      i32.load
      call $upper_pow_two
      local.set 1
      local.get 2
      i32.load
      local.get 1
      i32.store offset=4
      local.get 2
      i32.load
      i32.const 0
      i32.store offset=8
      local.get 2
      i32.load
      i32.const 0
      i32.store offset=12
      local.get 2
      i32.load
      i32.const 0
      i32.store
      local.get 2
      i32.load offset=4
      local.get 2
      i32.load
      i32.store
      local.get 2
      i32.const 0
      i32.store offset=12
    end
    local.get 2
    i32.load offset=12
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func $upper_pow_two (type 1) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=8
        i32.const -2147483648
        i32.ge_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const -2147483648
        i32.store offset=12
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.load offset=8
        br_if 0 (;@2;)
        local.get 1
        i32.const 2
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 1
      local.get 1
      i32.load offset=8
      i32.const -1
      i32.add
      i32.store offset=8
      local.get 1
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=8
      i32.const 1
      i32.shr_u
      i32.or
      i32.store offset=8
      local.get 1
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=8
      i32.const 2
      i32.shr_u
      i32.or
      i32.store offset=8
      local.get 1
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=8
      i32.const 4
      i32.shr_u
      i32.or
      i32.store offset=8
      local.get 1
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=8
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=8
      local.get 1
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=8
      i32.const 16
      i32.shr_u
      i32.or
      i32.store offset=8
      local.get 1
      local.get 1
      i32.load offset=8
      i32.const 1
      i32.add
      i32.store offset=8
      local.get 1
      local.get 1
      i32.load offset=8
      i32.store offset=12
    end
    local.get 1
    i32.load offset=12)
  (func $deque_destroy (type 2) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.load offset=16
    local.get 1
    i32.load offset=12
    i32.load offset=28
    call_indirect (type 2)
    local.get 1
    i32.load offset=12
    local.get 1
    i32.load offset=12
    i32.load offset=28
    call_indirect (type 2)
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func $deque_add (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    call $deque_add_last
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func $deque_add_last (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=8
        i32.load offset=4
        local.get 2
        i32.load offset=8
        i32.load
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=8
        call $expand_capacity
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 1
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 2
      i32.load offset=8
      i32.load offset=16
      local.get 2
      i32.load offset=8
      i32.load offset=12
      i32.const 2
      i32.shl
      i32.add
      local.get 2
      i32.load offset=4
      i32.store
      local.get 2
      i32.load offset=8
      local.get 2
      i32.load offset=8
      i32.load offset=12
      i32.const 1
      i32.add
      local.get 2
      i32.load offset=8
      i32.load offset=4
      i32.const 1
      i32.sub
      i32.and
      i32.store offset=12
      local.get 2
      i32.load offset=8
      local.tee 1
      local.get 1
      i32.load
      i32.const 1
      i32.add
      i32.store
      local.get 2
      i32.const 0
      i32.store offset=12
    end
    local.get 2
    i32.load offset=12
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func $expand_capacity (type 1) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=8
        i32.load offset=4
        i32.const -2147483648
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 4
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 1
      local.get 1
      i32.load offset=8
      i32.load offset=4
      i32.const 1
      i32.shl
      i32.store offset=4
      local.get 1
      local.get 1
      i32.load offset=4
      i32.const 4
      local.get 1
      i32.load offset=8
      i32.load offset=24
      call_indirect (type 0)
      i32.store
      block  ;; label = @2
        local.get 1
        i32.load
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.const 1
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load
      i32.const 0
      call $copy_buffer
      local.get 1
      i32.load offset=8
      i32.load offset=16
      local.get 1
      i32.load offset=8
      i32.load offset=28
      call_indirect (type 2)
      local.get 1
      i32.load offset=8
      i32.const 0
      i32.store offset=8
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=8
      i32.load
      i32.store offset=12
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=4
      i32.store offset=4
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load
      i32.store offset=16
      local.get 1
      i32.const 0
      i32.store offset=12
    end
    local.get 1
    i32.load offset=12
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func $copy_buffer (type 6) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 2
    i32.store offset=20
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=20
        i32.const 0
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.load offset=28
            i32.load offset=12
            local.get 3
            i32.load offset=28
            i32.load offset=8
            i32.gt_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.load offset=24
            local.get 3
            i32.load offset=28
            i32.load offset=16
            local.get 3
            i32.load offset=28
            i32.load offset=8
            i32.const 2
            i32.shl
            i32.add
            local.get 3
            i32.load offset=28
            i32.load
            i32.const 2
            i32.shl
            call $memcpy
            drop
            br 1 (;@3;)
          end
          local.get 3
          local.get 3
          i32.load offset=28
          i32.load offset=12
          i32.store offset=16
          local.get 3
          local.get 3
          i32.load offset=28
          i32.load offset=4
          local.get 3
          i32.load offset=28
          i32.load offset=8
          i32.sub
          i32.store offset=12
          local.get 3
          i32.load offset=24
          local.get 3
          i32.load offset=28
          i32.load offset=16
          local.get 3
          i32.load offset=28
          i32.load offset=8
          i32.const 2
          i32.shl
          i32.add
          local.get 3
          i32.load offset=12
          i32.const 2
          i32.shl
          call $memcpy
          drop
          local.get 3
          i32.load offset=24
          local.get 3
          i32.load offset=12
          i32.const 2
          i32.shl
          i32.add
          local.get 3
          i32.load offset=28
          i32.load offset=16
          local.get 3
          i32.load offset=16
          i32.const 2
          i32.shl
          call $memcpy
          drop
        end
        br 1 (;@1;)
      end
      local.get 3
      i32.const 0
      i32.store offset=8
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=28
          i32.load
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          local.get 3
          i32.load offset=28
          i32.load offset=8
          local.get 3
          i32.load offset=8
          i32.add
          local.get 3
          i32.load offset=28
          i32.load offset=4
          i32.const 1
          i32.sub
          i32.and
          i32.store offset=4
          local.get 3
          i32.load offset=28
          i32.load offset=16
          local.get 3
          i32.load offset=4
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.get 3
          i32.load offset=20
          call_indirect (type 1)
          local.set 2
          local.get 3
          i32.load offset=24
          local.get 3
          i32.load offset=8
          i32.const 2
          i32.shl
          i32.add
          local.get 2
          i32.store
          local.get 3
          local.get 3
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 0 (;@3;)
        end
      end
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func $deque_remove_at (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=40
    local.get 3
    local.get 1
    i32.store offset=36
    local.get 3
    local.get 2
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=36
        local.get 3
        i32.load offset=40
        i32.load
        i32.ge_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 8
        i32.store offset=44
        br 1 (;@1;)
      end
      local.get 3
      local.get 3
      i32.load offset=40
      i32.load offset=4
      i32.const 1
      i32.sub
      i32.store offset=28
      local.get 3
      local.get 3
      i32.load offset=40
      i32.load offset=12
      local.get 3
      i32.load offset=28
      i32.and
      i32.store offset=24
      local.get 3
      local.get 3
      i32.load offset=40
      i32.load offset=8
      local.get 3
      i32.load offset=28
      i32.and
      i32.store offset=20
      local.get 3
      local.get 3
      i32.load offset=40
      i32.load offset=8
      local.get 3
      i32.load offset=36
      i32.add
      local.get 3
      i32.load offset=28
      i32.and
      i32.store offset=16
      local.get 3
      local.get 3
      i32.load offset=40
      i32.load offset=16
      local.get 3
      i32.load offset=36
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.store offset=12
      block  ;; label = @2
        local.get 3
        i32.load offset=36
        br_if 0 (;@2;)
        local.get 3
        local.get 3
        i32.load offset=40
        local.get 3
        i32.load offset=32
        call $deque_remove_first
        i32.store offset=44
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 3
        i32.load offset=36
        local.get 3
        i32.load offset=28
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 3
        i32.load offset=40
        local.get 3
        i32.load offset=32
        call $deque_remove_last
        i32.store offset=44
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load offset=36
          local.get 3
          i32.load offset=40
          i32.load
          i32.const 1
          i32.shr_u
          i32.const 1
          i32.sub
          i32.le_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.load offset=16
              local.get 3
              i32.load offset=20
              i32.lt_u
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              local.get 3
              i32.load offset=40
              i32.load offset=16
              local.get 3
              i32.load offset=28
              i32.const 2
              i32.shl
              i32.add
              i32.load
              i32.store offset=8
              block  ;; label = @6
                local.get 3
                i32.load offset=20
                local.get 3
                i32.load offset=28
                i32.ne
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=40
                i32.load offset=16
                local.get 3
                i32.load offset=20
                i32.const 1
                i32.add
                i32.const 2
                i32.shl
                i32.add
                local.get 3
                i32.load offset=40
                i32.load offset=16
                local.get 3
                i32.load offset=20
                i32.const 2
                i32.shl
                i32.add
                local.get 3
                i32.load offset=28
                local.get 3
                i32.load offset=20
                i32.sub
                i32.const 2
                i32.shl
                call $memmove
                drop
              end
              block  ;; label = @6
                local.get 3
                i32.load offset=16
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=40
                i32.load offset=16
                i32.const 4
                i32.add
                local.get 3
                i32.load offset=40
                i32.load offset=16
                local.get 3
                i32.load offset=16
                i32.const 2
                i32.shl
                call $memmove
                drop
              end
              local.get 3
              i32.load offset=40
              i32.load offset=16
              local.get 3
              i32.load offset=8
              i32.store
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=40
            i32.load offset=16
            local.get 3
            i32.load offset=20
            i32.const 1
            i32.add
            i32.const 2
            i32.shl
            i32.add
            local.get 3
            i32.load offset=40
            i32.load offset=16
            local.get 3
            i32.load offset=20
            i32.const 2
            i32.shl
            i32.add
            local.get 3
            i32.load offset=36
            i32.const 2
            i32.shl
            call $memmove
            drop
          end
          local.get 3
          i32.load offset=40
          local.get 3
          i32.load offset=40
          i32.load offset=8
          i32.const 1
          i32.add
          local.get 3
          i32.load offset=28
          i32.and
          i32.store offset=8
          br 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.load offset=16
            local.get 3
            i32.load offset=24
            i32.gt_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 3
            i32.load offset=40
            i32.load offset=16
            i32.load
            i32.store offset=4
            block  ;; label = @5
              local.get 3
              i32.load offset=16
              local.get 3
              i32.load offset=28
              i32.ne
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=40
              i32.load offset=16
              local.get 3
              i32.load offset=16
              i32.const 2
              i32.shl
              i32.add
              local.get 3
              i32.load offset=40
              i32.load offset=16
              local.get 3
              i32.load offset=16
              i32.const 1
              i32.add
              i32.const 2
              i32.shl
              i32.add
              local.get 3
              i32.load offset=28
              local.get 3
              i32.load offset=16
              i32.sub
              i32.const 2
              i32.shl
              call $memmove
              drop
            end
            block  ;; label = @5
              local.get 3
              i32.load offset=16
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=40
              i32.load offset=16
              i32.const 4
              i32.add
              local.get 3
              i32.load offset=40
              i32.load offset=16
              local.get 3
              i32.load offset=24
              i32.const 2
              i32.shl
              call $memmove
              drop
            end
            local.get 3
            i32.load offset=40
            i32.load offset=16
            local.get 3
            i32.load offset=28
            i32.const 2
            i32.shl
            i32.add
            local.get 3
            i32.load offset=4
            i32.store
            br 1 (;@3;)
          end
          local.get 3
          i32.load offset=40
          i32.load offset=16
          local.get 3
          i32.load offset=16
          i32.const 2
          i32.shl
          i32.add
          local.get 3
          i32.load offset=40
          i32.load offset=16
          local.get 3
          i32.load offset=16
          i32.const 1
          i32.add
          i32.const 2
          i32.shl
          i32.add
          local.get 3
          i32.load offset=24
          local.get 3
          i32.load offset=16
          i32.sub
          i32.const 2
          i32.shl
          call $memmove
          drop
        end
        local.get 3
        i32.load offset=40
        local.get 3
        i32.load offset=40
        i32.load offset=12
        i32.const 1
        i32.sub
        local.get 3
        i32.load offset=28
        i32.and
        i32.store offset=12
      end
      local.get 3
      i32.load offset=40
      local.tee 2
      local.get 2
      i32.load
      i32.const -1
      i32.add
      i32.store
      block  ;; label = @2
        local.get 3
        i32.load offset=32
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=32
        local.get 3
        i32.load offset=12
        i32.store
      end
      local.get 3
      i32.const 0
      i32.store offset=44
    end
    local.get 3
    i32.load offset=44
    local.set 2
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 2)
  (func $deque_remove_first (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=8
        i32.load
        br_if 0 (;@2;)
        local.get 2
        i32.const 8
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 2
      local.get 2
      i32.load offset=8
      i32.load offset=16
      local.get 2
      i32.load offset=8
      i32.load offset=8
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.store
      local.get 2
      i32.load offset=8
      local.get 2
      i32.load offset=8
      i32.load offset=8
      i32.const 1
      i32.add
      local.get 2
      i32.load offset=8
      i32.load offset=4
      i32.const 1
      i32.sub
      i32.and
      i32.store offset=8
      local.get 2
      i32.load offset=8
      local.tee 1
      local.get 1
      i32.load
      i32.const -1
      i32.add
      i32.store
      block  ;; label = @2
        local.get 2
        i32.load offset=4
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=4
        local.get 2
        i32.load
        i32.store
      end
      local.get 2
      i32.const 0
      i32.store offset=12
    end
    local.get 2
    i32.load offset=12)
  (func $deque_remove_last (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=24
    local.get 2
    local.get 1
    i32.store offset=20
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=24
        i32.load
        br_if 0 (;@2;)
        local.get 2
        i32.const 8
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 2
      local.get 2
      i32.load offset=24
      i32.load offset=12
      i32.const 1
      i32.sub
      local.get 2
      i32.load offset=24
      i32.load offset=4
      i32.const 1
      i32.sub
      i32.and
      i32.store offset=16
      local.get 2
      local.get 2
      i32.load offset=24
      i32.load offset=16
      local.get 2
      i32.load offset=16
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.store offset=12
      local.get 2
      i32.load offset=24
      local.get 2
      i32.load offset=16
      i32.store offset=12
      local.get 2
      i32.load offset=24
      local.tee 1
      local.get 1
      i32.load
      i32.const -1
      i32.add
      i32.store
      block  ;; label = @2
        local.get 2
        i32.load offset=20
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=20
        local.get 2
        i32.load offset=12
        i32.store
      end
      local.get 2
      i32.const 0
      i32.store offset=28
    end
    local.get 2
    i32.load offset=28)
  (func $deque_contains (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=28
    local.get 2
    local.get 1
    i32.store offset=24
    local.get 2
    i32.const 0
    i32.store offset=16
    local.get 2
    i32.const 0
    i32.store offset=20
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=20
        local.get 2
        i32.load offset=28
        i32.load
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 2
        i32.load offset=28
        i32.load offset=8
        local.get 2
        i32.load offset=20
        i32.add
        local.get 2
        i32.load offset=28
        i32.load offset=4
        i32.const 1
        i32.sub
        i32.and
        i32.store offset=12
        block  ;; label = @3
          local.get 2
          i32.load offset=28
          i32.load offset=16
          local.get 2
          i32.load offset=12
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.get 2
          i32.load offset=24
          i32.eq
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 2
          i32.load offset=16
          i32.const 1
          i32.add
          i32.store offset=16
        end
        local.get 2
        local.get 2
        i32.load offset=20
        i32.const 1
        i32.add
        i32.store offset=20
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.load offset=16)
  (func $deque_size (type 1) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.load)
  (func $deque_zip_iter_init (type 6) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    local.get 0
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=4
    local.get 3
    i32.load offset=12
    local.get 3
    i32.load offset=8
    i32.store
    local.get 3
    i32.load offset=12
    local.get 3
    i32.load offset=4
    i32.store offset=4
    local.get 3
    i32.load offset=12
    i32.const 0
    i32.store offset=8
    local.get 3
    i32.load offset=12
    i32.const 0
    i32.store offset=12)
  (func $deque_zip_iter_next (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    local.get 0
    i32.store offset=40
    local.get 3
    local.get 1
    i32.store offset=36
    local.get 3
    local.get 2
    i32.store offset=32
    local.get 3
    local.get 3
    i32.load offset=40
    i32.load
    i32.load offset=4
    i32.const 1
    i32.sub
    i32.store offset=28
    local.get 3
    local.get 3
    i32.load offset=40
    i32.load
    i32.load offset=12
    local.get 3
    i32.load offset=28
    i32.and
    i32.store offset=24
    local.get 3
    local.get 3
    i32.load offset=40
    i32.load
    i32.load offset=8
    local.get 3
    i32.load offset=28
    i32.and
    i32.store offset=20
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load offset=24
          local.get 3
          i32.load offset=20
          i32.eq
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=40
          i32.load offset=8
          local.get 3
          i32.load offset=40
          i32.load
          i32.load
          i32.ge_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 3
        i32.const 9
        i32.store offset=44
        br 1 (;@1;)
      end
      local.get 3
      local.get 3
      i32.load offset=40
      i32.load offset=4
      i32.load offset=4
      i32.const 1
      i32.sub
      i32.store offset=16
      local.get 3
      local.get 3
      i32.load offset=40
      i32.load offset=4
      i32.load offset=12
      local.get 3
      i32.load offset=16
      i32.and
      i32.store offset=12
      local.get 3
      local.get 3
      i32.load offset=40
      i32.load offset=4
      i32.load offset=8
      local.get 3
      i32.load offset=16
      i32.and
      i32.store offset=8
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load offset=12
          local.get 3
          i32.load offset=8
          i32.eq
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=40
          i32.load offset=8
          local.get 3
          i32.load offset=40
          i32.load offset=4
          i32.load
          i32.ge_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 3
        i32.const 9
        i32.store offset=44
        br 1 (;@1;)
      end
      local.get 3
      local.get 3
      i32.load offset=40
      i32.load
      i32.load offset=8
      local.get 3
      i32.load offset=40
      i32.load offset=8
      i32.add
      local.get 3
      i32.load offset=28
      i32.and
      i32.store offset=4
      local.get 3
      local.get 3
      i32.load offset=40
      i32.load offset=4
      i32.load offset=8
      local.get 3
      i32.load offset=40
      i32.load offset=8
      i32.add
      local.get 3
      i32.load offset=16
      i32.and
      i32.store
      local.get 3
      i32.load offset=36
      local.get 3
      i32.load offset=40
      i32.load
      i32.load offset=16
      local.get 3
      i32.load offset=4
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.store
      local.get 3
      i32.load offset=32
      local.get 3
      i32.load offset=40
      i32.load offset=4
      i32.load offset=16
      local.get 3
      i32.load
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.store
      local.get 3
      i32.load offset=40
      local.tee 2
      local.get 2
      i32.load offset=8
      i32.const 1
      i32.add
      i32.store offset=8
      local.get 3
      i32.load offset=40
      i32.const 0
      i32.store offset=12
      local.get 3
      i32.const 0
      i32.store offset=44
    end
    local.get 3
    i32.load offset=44)
  (func $deque_zip_iter_remove (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 2
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=8
        i32.load offset=12
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 7
        i32.store offset=12
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load offset=8
          i32.load offset=8
          i32.const 1
          i32.sub
          local.get 3
          i32.load offset=8
          i32.load
          i32.load
          i32.ge_u
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=8
          i32.load offset=8
          i32.const 1
          i32.sub
          local.get 3
          i32.load offset=8
          i32.load offset=4
          i32.load
          i32.ge_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 3
        i32.const 8
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=8
      i32.load
      local.get 3
      i32.load offset=8
      i32.load offset=8
      i32.const 1
      i32.sub
      local.get 3
      i32.load offset=4
      call $deque_remove_at
      drop
      local.get 3
      i32.load offset=8
      i32.load offset=4
      local.get 3
      i32.load offset=8
      i32.load offset=8
      i32.const 1
      i32.sub
      local.get 3
      i32.load
      call $deque_remove_at
      drop
      local.get 3
      i32.load offset=8
      local.tee 2
      local.get 2
      i32.load offset=8
      i32.const -1
      i32.add
      i32.store offset=8
      local.get 3
      i32.load offset=8
      i32.const 1
      i32.store offset=12
      local.get 3
      i32.const 0
      i32.store offset=12
    end
    local.get 3
    i32.load offset=12
    local.set 2
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 2)
  (func $assume (type 2) (param i32)
    global.get 0
    i32.const 16
    i32.sub
    local.get 0
    i32.store offset=12)
  (func $assert (type 2) (param i32)
    global.get 0
    i32.const 16
    i32.sub
    local.get 0
    i32.store offset=12)
  (func $alloc (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.load offset=12)
  (func $dealloc (type 2) (param i32)
    global.get 0
    i32.const 16
    i32.sub
    local.get 0
    i32.store offset=12)
  (func $sym_int (type 1) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12)
  (table (;0;) 4 4 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66592))
  (export "memory" (memory 0))
  (export "__original_main" (func $__original_main))
  (elem (;0;) (i32.const 1) $malloc $calloc $free)
  (data (;0;) (i32.const 1024) "g\00f\00e\00d\00c\00b\00a\00")
  (data (;1;) (i32.const 1040) " \04\01\00"))