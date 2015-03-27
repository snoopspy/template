# ------------------------------------------------------------------------------
# lib/myliba/mylibb/mylibc/makefile
# ------------------------------------------------------------------------------

.PHONY: all temp clean

_SRCS = $(wildcard *.cpp)
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_LIB  = lib$(shell basename $(PWD)).a

all: $(_LIB)

temp:
	@echo "lib/foo/bar/baz temp"

clean:
	rm -f ./.depend
	rm -rf $(_OBJS)
	rm -rf $(_LIB)

.depend: $(_SRCS)
	@rm -f ./.depend
	@$(CXX) $(CPPFLAGS) -MM $(_SRCS) > ./.depend

include .depend

$(_OBJS): $(MAKEFILE_LIST)

$(_LIB): $(_OBJS) $(MAKEFILE_LIST)
	$(AR) $(ARFLAGS) -o $@ $(_OBJS) $(LOADLIBES) $(LDLIBS)
