(module
  (func $get_numbers
    (result i32 i32)
    i32.const 10
    i32.const 20
  )
  (func (export "main") (result i32)
    call $get_numbers
    i32.add
  )
)
