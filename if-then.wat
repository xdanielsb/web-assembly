(module
  (func $min (param $a i32) (param $b i32) (result i32)
    ;; if return an i32
    (if (result i32)
      ;; a <= b
      (i32.lt_s (get_local $a) (get_local $b))
      (then (get_local $a))
      (else (get_local $b))
    )
  )
  (func (export "main") (result i32)
    i32.const 1
    i32.const 12
    call $min
  )
)

