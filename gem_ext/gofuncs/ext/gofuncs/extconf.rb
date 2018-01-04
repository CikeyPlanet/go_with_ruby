require 'mkmf'
# No check code here
# You should check 1) Go environment exists and 2) Go version >= 1.5

if find_executable('go').nil? then
  abort <<NO_GO
No Go environment installed
NO_GO
end

# Check Go version here

system "go build -o main.so -buildmode=c-shared main.go"

# require 'mkmf'
# find_executable('go')
#
# $objs = []
# def $objs.empty?; false ;end
#
# create_makefile("gofuncs/gofuncs")
#
# case `#{CONFIG['CC']} --version`
# when /Free Software Foundation/
#   ldflags = '-Wl,--unresolved-symbols=ignore-all'
# when /clang/
#   ldflags = '-undefined dynamic_lookup'
# end

# File.open('Makefile', 'a') do |f|
#   f.write <<-EOS.gsub(/^ {8}/, "\t")
# $(DLLIB): Makefile $(srcdir)/main.go
#         CGO_CFLAGS='$(INCFLAGS)' CGO_LDFLAGS='#{ldflags}' \
#           go build -buildmode=c-shared -o $(DLLIB)
#   EOS
# end

# if find_executable('go').nil? then
#   abort <<NO_GO
# No Go environment installed
# NO_GO
# end
# system "pwd"
# system "go build -buildmode=c-shared -o ../../ext/gofuncs/main.so ../../ext/gofuncs/main.go"
