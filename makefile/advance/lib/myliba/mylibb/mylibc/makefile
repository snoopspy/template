# ------------------------------------------------------------------------------
# lib/myliba/mylibb/mylibc/makefile
# ------------------------------------------------------------------------------

.PHONY: all debug release build clean temp depend

_SRCS = $(wildcard *.cpp)
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_LIB  = lib$(shell basename $(PWD)).a

CPPFLAGS += -Wall

all: release
debug: CPPFLAGS += -O0
debug: build
release: CPPFLAGS += -O2
release: build
build: $(_LIB)

$(_OBJS): $(MAKEFILE_LIST)

$(_LIB): $(_OBJS) $(MAKEFILE_LIST)
	$(AR) $(ARFLAGS) -o $@ $(_OBJS)

clean:
	rm -f ./.depend
	rm -rf $(_OBJS)
	rm -rf $(_LIB)

temp:
	@echo "lib/myliba/mylibb/mylibc temp"

depend: .depend

.depend: $(_SRCS)
	rm -f ./.depend
	$(CXX) $(CPPFLAGS) -MM $(_SRCS) > ./.depend

include .depend
