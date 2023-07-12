(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (import "symbolic" "i32_symbol" (func $symbol (type 2)))
  (import "symbolic" "assume" (func $assume (type 1)))
  (import "symbolic" "assert" (func $assert (type 1)))
  (import "summaries" "alloc" (func $alloc (type 0)))
  (import "summaries" "dealloc" (func $dealloc (type 1)))
  (func $setup_test (type 3)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1028
    call $slist_new
    drop
    i32.const 1032
    call $slist_new
    drop
    i32.const 0
    call $symbol
    i32.store offset=1036
    i32.const 0
    call $symbol
    i32.store offset=1040
    i32.const 0
    call $symbol
    i32.store offset=1044
    i32.const 0
    call $symbol
    i32.store offset=1048
    i32.const 0
    call $symbol
    i32.store offset=1052
    i32.const 0
    call $symbol
    i32.store offset=1056
    i32.const 0
    call $symbol
    i32.store offset=1060
    i32.const 0
    call $symbol
    i32.store offset=1064
    local.get 0
    i32.const 4
    call $malloc
    i32.store offset=12
    local.get 0
    i32.const 4
    call $malloc
    i32.store offset=8
    local.get 0
    i32.const 4
    call $malloc
    i32.store offset=4
    local.get 0
    i32.const 4
    call $malloc
    i32.store
    local.get 0
    i32.load offset=12
    i32.const 0
    i32.load offset=1036
    i32.store
    local.get 0
    i32.load offset=8
    i32.const 0
    i32.load offset=1040
    i32.store
    local.get 0
    i32.load offset=4
    i32.const 0
    i32.load offset=1044
    i32.store
    local.get 0
    i32.load
    i32.const 0
    i32.load offset=1048
    i32.store
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load offset=12
    call $slist_add
    drop
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load offset=8
    call $slist_add
    drop
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load offset=4
    call $slist_add
    drop
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load
    call $slist_add
    drop
    local.get 0
    i32.const 4
    call $malloc
    i32.store offset=12
    local.get 0
    i32.const 4
    call $malloc
    i32.store offset=8
    local.get 0
    i32.const 4
    call $malloc
    i32.store offset=4
    local.get 0
    i32.const 4
    call $malloc
    i32.store
    local.get 0
    i32.load offset=12
    i32.const 0
    i32.load offset=1052
    i32.store
    local.get 0
    i32.load offset=8
    i32.const 0
    i32.load offset=1056
    i32.store
    local.get 0
    i32.load offset=4
    i32.const 0
    i32.load offset=1060
    i32.store
    local.get 0
    i32.load
    i32.const 0
    i32.load offset=1064
    i32.store
    i32.const 0
    i32.load offset=1032
    local.get 0
    i32.load offset=12
    call $slist_add
    drop
    i32.const 0
    i32.load offset=1032
    local.get 0
    i32.load offset=8
    call $slist_add
    drop
    i32.const 0
    i32.load offset=1032
    local.get 0
    i32.load offset=4
    call $slist_add
    drop
    i32.const 0
    i32.load offset=1032
    local.get 0
    i32.load
    call $slist_add
    drop
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $teardown_test (type 3)
    i32.const 0
    i32.load offset=1028
    call $slist_destroy
    i32.const 0
    i32.load offset=1032
    call $slist_destroy)
  (func $__original_main (type 2) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 0
    i32.store offset=12
    call $setup_test
    i32.const 0
    local.set 1
    block  ;; label = @1
      i32.const 0
      i32.load offset=1040
      i32.const 0
      i32.load offset=1036
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      i32.const 0
      i32.load offset=1040
      i32.const 0
      i32.load offset=1044
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1040
      i32.const 0
      i32.load offset=1048
      i32.ne
      local.set 1
    end
    local.get 1
    i32.const 1
    i32.and
    call $assume
    i32.const 0
    i32.const 0
    i32.load offset=1028
    i32.const 1
    local.get 0
    i32.const 8
    i32.add
    call $slist_get_at
    i32.eq
    i32.const 1
    i32.and
    call $assert
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load offset=8
    i32.const 0
    call $slist_remove
    drop
    i32.const 3
    i32.const 0
    i32.load offset=1028
    call $slist_size
    i32.eq
    i32.const 1
    i32.and
    call $assert
    i32.const 0
    i32.const 0
    i32.load offset=1028
    local.get 0
    i32.load offset=8
    call $slist_contains
    i32.eq
    i32.const 1
    i32.and
    call $assert
    local.get 0
    i32.load offset=8
    call $free
    call $teardown_test
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_start (type 3)
    call $__original_main
    drop)
  (func $malloc (type 4) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 0
    i32.load offset=1024
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
        i32.load offset=1024
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
    i32.load offset=1024
    local.get 1
    i32.load offset=12
    i32.add
    i32.store offset=1024
    local.get 1
    i32.load offset=8
    local.get 1
    i32.load offset=12
    call $alloc
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $calloc (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.const 0
    i32.load offset=1024
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
        i32.load offset=1024
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
    i32.load offset=1024
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.mul
    i32.add
    i32.store offset=1024
    local.get 2
    i32.load offset=4
    local.get 2
    i32.load offset=12
    local.get 2
    i32.load offset=8
    i32.mul
    call $alloc
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $free (type 1) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    call $dealloc
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $slist_conf_init (type 1) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.const 1
    i32.store
    local.get 1
    i32.load offset=12
    i32.const 2
    i32.store offset=4
    local.get 1
    i32.load offset=12
    i32.const 3
    i32.store offset=8)
  (func $slist_new (type 4) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    call $slist_conf_init
    local.get 1
    local.get 1
    i32.load offset=12
    call $slist_new_conf
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $slist_new_conf (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 1
    i32.const 24
    local.get 2
    i32.load offset=8
    i32.load offset=4
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
      i32.load
      local.get 2
      i32.load offset=8
      i32.load
      i32.store offset=12
      local.get 2
      i32.load
      local.get 2
      i32.load offset=8
      i32.load offset=4
      i32.store offset=16
      local.get 2
      i32.load
      local.get 2
      i32.load offset=8
      i32.load offset=8
      i32.store offset=20
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
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $slist_destroy (type 1) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    call $slist_remove_all
    drop
    local.get 1
    i32.load offset=12
    local.get 1
    i32.load offset=12
    i32.load offset=20
    call_indirect (type 1)
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $slist_remove_all (type 4) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    local.get 1
    i32.load offset=8
    i32.const 0
    call $unlinkn_all
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=8
        i32.const 0
        i32.store offset=4
        local.get 1
        i32.load offset=8
        i32.const 0
        i32.store offset=8
        local.get 1
        i32.const 0
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 1
      i32.const 7
      i32.store offset=12
    end
    local.get 1
    i32.load offset=12
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $unlinkn_all (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
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
        i32.const 0
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 2
      local.get 2
      i32.load offset=24
      i32.load offset=4
      i32.store offset=16
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.load offset=16
          i32.const 0
          i32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          local.get 2
          i32.load offset=16
          i32.load offset=4
          i32.store offset=12
          block  ;; label = @4
            local.get 2
            i32.load offset=20
            i32.const 0
            i32.ne
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.load offset=16
            i32.load
            local.get 2
            i32.load offset=20
            call_indirect (type 1)
          end
          local.get 2
          i32.load offset=16
          local.get 2
          i32.load offset=24
          i32.load offset=20
          call_indirect (type 1)
          local.get 2
          local.get 2
          i32.load offset=12
          i32.store offset=16
          local.get 2
          i32.load offset=24
          local.tee 0
          local.get 0
          i32.load
          i32.const -1
          i32.add
          i32.store
          br 0 (;@3;)
        end
      end
      local.get 2
      i32.const 1
      i32.store offset=28
    end
    local.get 2
    i32.load offset=28
    local.set 0
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $slist_add (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
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
    call $slist_add_last
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $slist_add_last (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 1
    i32.const 8
    local.get 2
    i32.load offset=8
    i32.load offset=16
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
      i32.load
      local.get 2
      i32.load offset=4
      i32.store
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=8
          i32.load
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=8
          local.get 2
          i32.load
          i32.store offset=4
          local.get 2
          i32.load offset=8
          local.get 2
          i32.load
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 2
        i32.load offset=8
        i32.load offset=8
        local.get 2
        i32.load
        i32.store offset=4
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load
        i32.store offset=8
      end
      local.get 2
      i32.load offset=8
      local.tee 0
      local.get 0
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
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $get_node_at (type 5) (param i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    local.get 0
    i32.store offset=24
    local.get 4
    local.get 1
    i32.store offset=20
    local.get 4
    local.get 2
    i32.store offset=16
    local.get 4
    local.get 3
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load offset=20
        local.get 4
        i32.load offset=24
        i32.load
        i32.ge_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.const 8
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=16
      local.get 4
      i32.load offset=24
      i32.load offset=4
      i32.store
      local.get 4
      i32.load offset=12
      i32.const 0
      i32.store
      local.get 4
      i32.const 0
      i32.store offset=8
      block  ;; label = @2
        loop  ;; label = @3
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=20
          i32.lt_u
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          i32.load offset=12
          local.get 4
          i32.load offset=16
          i32.load
          i32.store
          local.get 4
          i32.load offset=16
          local.get 4
          i32.load offset=16
          i32.load
          i32.load offset=4
          i32.store
          local.get 4
          local.get 4
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 0 (;@3;)
        end
      end
      local.get 4
      i32.const 0
      i32.store offset=28
    end
    local.get 4
    i32.load offset=28)
  (func $slist_remove (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 1
    i32.store offset=20
    local.get 3
    local.get 2
    i32.store offset=16
    local.get 3
    i32.const 0
    i32.store offset=12
    local.get 3
    i32.const 0
    i32.store offset=8
    local.get 3
    local.get 3
    i32.load offset=24
    local.get 3
    i32.load offset=20
    local.get 3
    i32.const 8
    i32.add
    local.get 3
    i32.const 12
    i32.add
    call $get_node
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=4
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 3
        i32.load offset=4
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 3
      local.get 3
      i32.load offset=24
      local.get 3
      i32.load offset=8
      local.get 3
      i32.load offset=12
      call $unlinkn
      i32.store
      block  ;; label = @2
        local.get 3
        i32.load offset=16
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load
        i32.store
      end
      local.get 3
      i32.const 0
      i32.store offset=28
    end
    local.get 3
    i32.load offset=28
    local.set 0
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $get_node (type 5) (param i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    local.get 0
    i32.store offset=24
    local.get 4
    local.get 1
    i32.store offset=20
    local.get 4
    local.get 2
    i32.store offset=16
    local.get 4
    local.get 3
    i32.store offset=12
    local.get 4
    i32.load offset=16
    local.get 4
    i32.load offset=24
    i32.load offset=4
    i32.store
    local.get 4
    i32.load offset=12
    i32.const 0
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 4
          i32.load offset=16
          i32.load
          i32.const 0
          i32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 4
            i32.load offset=16
            i32.load
            i32.load
            local.get 4
            i32.load offset=20
            i32.eq
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.const 0
            i32.store offset=28
            br 3 (;@1;)
          end
          local.get 4
          i32.load offset=12
          local.get 4
          i32.load offset=16
          i32.load
          i32.store
          local.get 4
          i32.load offset=16
          local.get 4
          i32.load offset=16
          i32.load
          i32.load offset=4
          i32.store
          br 0 (;@3;)
        end
      end
      local.get 4
      i32.const 7
      i32.store offset=28
    end
    local.get 4
    i32.load offset=28)
  (func $unlinkn (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=4
    local.get 3
    local.get 3
    i32.load offset=8
    i32.load
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=4
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=4
        local.get 3
        i32.load offset=8
        i32.load offset=4
        i32.store offset=4
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=8
      i32.load offset=4
      i32.store offset=4
    end
    block  ;; label = @1
      local.get 3
      i32.load offset=8
      i32.load offset=4
      i32.const 0
      i32.ne
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=4
      i32.store offset=8
    end
    local.get 3
    i32.load offset=8
    local.get 3
    i32.load offset=12
    i32.load offset=20
    call_indirect (type 1)
    local.get 3
    i32.load offset=12
    local.tee 0
    local.get 0
    i32.load
    i32.const -1
    i32.add
    i32.store
    local.get 3
    i32.load
    local.set 0
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $slist_get_at (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 1
    i32.store offset=20
    local.get 3
    local.get 2
    i32.store offset=16
    local.get 3
    i32.const 0
    i32.store offset=12
    local.get 3
    i32.const 0
    i32.store offset=8
    local.get 3
    local.get 3
    i32.load offset=24
    local.get 3
    i32.load offset=20
    local.get 3
    i32.const 8
    i32.add
    local.get 3
    i32.const 12
    i32.add
    call $get_node_at
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=4
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 3
        i32.load offset=4
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=16
      local.get 3
      i32.load offset=8
      i32.load
      i32.store
      local.get 3
      i32.const 0
      i32.store offset=28
    end
    local.get 3
    i32.load offset=28
    local.set 0
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $slist_size (type 4) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=12
    i32.load)
  (func $slist_contains (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    local.get 2
    i32.load offset=12
    i32.load offset=4
    i32.store offset=4
    local.get 2
    i32.const 0
    i32.store
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=4
        i32.const 0
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.load
          local.get 2
          i32.load offset=8
          i32.eq
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 2
          i32.load
          i32.const 1
          i32.add
          i32.store
        end
        local.get 2
        local.get 2
        i32.load offset=4
        i32.load offset=4
        i32.store offset=4
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.load)
  (table (;0;) 4 4 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1049648))
  (export "memory" (memory 0))
  (export "_start" (func $_start))
  (elem (;0;) (i32.const 1) func $malloc $calloc $free)
  (data $.data (i32.const 1024) "0\04\10\00"))
