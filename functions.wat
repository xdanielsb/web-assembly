(module
  (func $add (param $p i32)
    (result i32)
    local.get $p
    local.get $p
    i32.add
  )
  (func (export "main") (result i32)
    i32.const 13
    call $add 
  )
)
