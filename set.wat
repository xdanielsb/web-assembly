(module
  (func $set (param $b i32) (result i32)
     (local $res i32)
     (set_local $res (get_local $b))  ;; push res=b into the stack
     (get_local $res) ;; return res
  )
  (func (export "main") (result i32)
    i32.const 12
    call $set
  )
)


