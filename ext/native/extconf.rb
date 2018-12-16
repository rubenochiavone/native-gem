require 'mkmf'

if ENV["USE_GCOV"] and have_library("gcov", "__gcov_open")
  $CFLAGS << " -fprofile-arcs -ftest-coverage"
end

create_header
create_makefile 'native'
