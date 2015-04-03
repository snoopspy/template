# ------------------------------------------------------------------------------
# lib/lib3/makefile
# ------------------------------------------------------------------------------

.PHONY: all debug release build clean depend temp

_ABSDIR := $(shell dirname $(PWD))
_RELDIR := ..
include ../lib2/lib2.mk

_SRCS = $(wildcard *.c) $(wildcard *.cc) $(wildcard *.cpp)
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_DEPS = $(_OBJS:%.o=%.d)
_LIB  = lib$(shell basename $(PWD)).a

CPPFLAGS += -Wall -g
LDLIBS += -lpthread

all: release

debug: CPPFLAGS += -O0
debug: build

release: CPPFLAGS += -O2
release: build

build: $(_LIB)

clean:
	rm -rf $(_OBJS)
	rm -rf $(_DEPS)	
	rm -rf $(_LIB)

depend: $(_DEPS) $(MAKEFILE_LIST)

temp:
	@echo "lib/lib3 temp"

$(_OBJS): $(MAKEFILE_LIST)

$(_LIB): $(_OBJS) $(MAKEFILE_LIST)
	$(AR) $(ARFLAGS) -o $@ $(_OBJS)

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