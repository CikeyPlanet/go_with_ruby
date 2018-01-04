require 'ffi'

module GoFuncs
  extend FFI::Library
  ffi_lib './main.so'
  attach_function :add, [:int, :int], :int
end

puts GoFuncs.add(12, 25)
