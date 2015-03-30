# ------------------------------------------------------------------------------
# lib/myliba/makefile
# ------------------------------------------------------------------------------

.PHONY: all debug release build clean temp

_ABS_PATH := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
_REL_PATH := .
include mylibb/mylibb.mk

_SRCS = $(wildcard *.cpp)
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_LIB  = lib$(shell basename $(PWD)).a

all: release
debug: build
release: build
build: $(_LIB)

$(_OBJS): $(MAKEFILE_LIST)

$(_LIB): $(_OBJS) $(MAKEFILE_LIST)
	$(AR) $(ARFLAGS) -o $@ $(_OBJS)

clean:
	rm -rf $(_OBJS)
	rm -rf $(_LIB)

temp:
	@echo "lib/myliba temp"

depend: .depend

.depend: $(_SRCS)
	rm -f ./.depend
	$(CXX) $(CPPFLAGS) -MM $(_SRCS) > ./.depend

include .depend
