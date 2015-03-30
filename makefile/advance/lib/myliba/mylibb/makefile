# ------------------------------------------------------------------------------
# lib/myliba/mylibb/makefile
# ------------------------------------------------------------------------------

_SUB_PROJS = mylibc
.PHONY: all debug release build clean temp

_ABS_PATH := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
_REL_PATH := .
include mylibc/mylibc.mk

_SRCS = $(wildcard *.cpp)
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_LIB  = lib$(shell basename $(PWD)).a

CPPFLAGS += -Wall

all: release
debug: CPPFLAGS += -O0
debug: build
release: CPPFLAGS += -O2
release: build
build: $(_SUB_PROJS) $(_LIB)

$(_OBJS): $(MAKEFILE_LIST)

$(_LIB): $(_OBJS) $(MAKEFILE_LIST)
	$(AR) $(ARFLAGS) -o $@ $(_OBJS)

clean:
	rm -rf $(_OBJS)
	rm -rf $(_LIB)

temp:
	@echo "lib/myliba/mylibb temp"
	@echo "_ABS_PATH   ="$(_ABS_PATH)
	@echo "_REL_PATH   ="$(_REL_PATH)
	@echo "_MYLIBC_PATH="$(_MYLIBC_PATH)
	@echo "MYLIBC_PATH ="$(MYLIBC_PATH)
	
	@echo "CPPFLAGS   ="$(CPPFLAGS)

depend: .depend

.depend: $(_SRCS)
	rm -f ./.depend
	$(CXX) $(CPPFLAGS) -MM $(_SRCS) > ./.depend

include .depend
