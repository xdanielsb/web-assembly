(module
  (func $min (param $a i32) (result i32)
    ;; if return an i32
    (if (result i32)
      ;; a <= 2; a
      (i32.lt_s (get_local $a) (i32.const 2))
      (then (get_local $a))
      (else (i32.add
             (call $min (i32.add (get_local $a) (i32.const -1) ))
             (call $min (i32.add (get_local $a) (i32.const -2) ))
      )
      )
    )
  )
  (func (export "main") (result i32)
    i32.const 7
    call $min
  )
)


