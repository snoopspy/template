# ------------------------------------------------------------------------------
# src/makefile
# ------------------------------------------------------------------------------

.PHONY: all debug release build clean temp

_ABS_PATH := $(shell dirname $(PWD))
_REL_PATH := ..
include ../lib/myliba/myliba.mk

_SRCS = $(wildcard *.cpp)
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_EXEC = ../bin/hello_world

CPPFLAGS += -Wall -g

all: release

debug: CPPFLAGS := -D_DEBUG $(CPPFLAGS)
debug: build

release: CPPFLAGS := -D_RELEASE -DNDEBUG $(CPPFLAGS)
release: build
	
build: $(_EXEC)


$(_OBJS): $(MAKEFILE_LIST)

$(_EXEC): $(_OBJS) $(MAKEFILE_LIST)
	$(LINK.cc) -o $@ $(_OBJS) $(LOADLIBES) $(LDLIBS)

clean:
	rm -f ./.depend
	rm -rf $(_OBJS)
	rm -rf $(_EXEC)

temp:
	@echo "_ABS_PATH  ="$(_ABS_PATH)
	@echo "_REL_PATH  ="$(_REL_PATH)
	@echo "MYLIBC_PATH="$(MYLIBC_PATH)

.depend: $(_SRCS)
	rm -f ./.depend
	$(CXX) $(CPPFLAGS) -MM $(_SRCS) > ./.depend

include .depend
