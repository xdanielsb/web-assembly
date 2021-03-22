(module
  (func $add (param $a i32) (param $b i32)
    (result i32)
    local.get $a
    local.get $b
    i32.add
  )
  (func (export "main") (result i32)
    i32.const 13
    i32.const 12
    call $add 
  )
)
