require 'fiddle/import'

module GoFuncs
  extend Fiddle::Importer
  dlload './main.so'
  extern 'int add(int, int)'
end

puts GoFuncs.add(14, 17)
