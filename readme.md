### Webassembly (WASM)


Programming language for the web, it is possible to compile low level languages like rust, c++ and  run it in browsers.


#### Goals

- Faster, Efficient and Portable
- Easy to read and debug 
- Security


##### Why ?

The are heavy task to run in the browser using js like image recognition, music apps, statistics... wasm can load faster and execute binary code, rust can be compiled and use it in the browsers.

##### How?

C/C++/Rust -> compile to WASM -> Web browser

##### semantics

https://github.com/WebAssembly/design/blob/master/Semantics.md

##### Compile and Run
```sh
$ wat2wasm hello_world.wat
$ wasm-interp hello_world.wasm --run-all-exports
```
