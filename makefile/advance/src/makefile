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

#
# targets
#
all: release

debug: CXXFLAGS := -g -O0 -D_DEBUG $(CXXFLAGS)
debug: build

release: CXXFLAGS := -g -O2 -D_RELEASE -DNDEBUG $(CXXFLAGS)
release: build
	
build: $(_EXEC)

temp:
	@echo "_ABS_PATH  ="$(_ABS_PATH)
	@echo "_REL_PATH  ="$(_REL_PATH)
	@echo "MYLIBC_PATH="$(MYLIBC_PATH)

clean:
	rm -f ./.depend
	rm -rf $(_OBJS)
	rm -rf $(_EXEC)

.depend: $(_SRCS)
	@rm -f ./.depend
	@$(CXX) $(CPPFLAGS) -MM $(_SRCS) > ./.depend

include .depend

$(_OBJS): $(MAKEFILE_LIST)

$(_EXEC): $(_OBJS) $(MAKEFILE_LIST)
	$(LINK.cc) -o $@ $(_OBJS) $(LOADLIBES) $(LDLIBS)
