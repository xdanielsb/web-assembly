(module
  (func $loop (param $b i32) (result i32)
     (local $i i32)
     (set_local $i (i32.const 0))  ;; i = 0

     (block ;; if you add multiple expresions in a loop, you must create a block
       ( loop
          (set_local $i (i32.add (get_local $i) (i32.const 1) ))  ;; i++
          (br_if 1 (i32.eq (get_local $i) (get_local $b))) ;; if i == b
          (br_if 1 (i32.eq (get_local $i) (i32.const 150))) ;; if i == 150
          (br 0) ;; return to loop
       )
     )

     (get_local $i) ;; return i
  )
  (func (export "main") (result i32)
    i32.const 200
    call $loop
  )
)

