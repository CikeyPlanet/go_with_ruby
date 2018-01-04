require 'ffi'

module Gofuncs
  extend FFI::Library
  path = File.expand_path('../../ext/gofuncs/main.so', __FILE__)

  ffi_lib 'c'
  ffi_lib path
  attach_function :fibonacci, [:int], :int
end
