# ------------------------------------------------------------------------------
# src/makefile
# ------------------------------------------------------------------------------

.PHONY: all debug release build clean depend temp

_ABSDIR := $(shell dirname $(PWD))
_RELDIR := ..
include ../lib/lib3/lib3.mk
include src.mk

_SRCS = $(wildcard *.c) $(wildcard *.cc) $(wildcard *.cpp)
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_DEPS = $(_OBJS:%.o=%.d)
_EXEC = ../bin/hello_world

all: release

debug: CPPFLAGS += -O0 -D_DEBUG
debug: build

release: CPPFLAGS += -O2 -D_RELEASE
release: build
	
build: $(_EXEC)

clean:
	rm -rf $(_OBJS)
	rm -rf $(_DEPS)
	rm -rf $(_EXEC)

depend: $(_DEPS) $(MAKEFILE_LIST)

temp:
	@echo "_ABSDIR  ="$(_ABSDIR)
	@echo "_RELDIR  ="$(_RELDIR)

$(_OBJS): $(MAKEFILE_LIST)

$(_EXEC): $(_OBJS) $(MAKEFILE_LIST)
	$(LINK.cc) -o $@ $(_OBJS) $(LOADLIBES) $(LDLIBS)

%.d: %.c
	$(COMPILE.c) -MM $< > $@
	
%.d: %.cc
	$(COMPILE.cc) -MM $< > $@

%.d: %.cpp
	$(COMPILE.cc) -MM $< > $@

_NODEPS=clean depend temp
ifeq (0, $(words $(findstring $(MAKECMDGOALS), $(_NODEPS))))
	-include $(_DEPS)
endif
