# ------------------------------------------------------------------------------
# src/makefile
# ------------------------------------------------------------------------------

.PHONY: all debug release build clean depend temp

_ABSDIR := $(shell dirname $(PWD))
_RELDIR := ..
include ../lib/lib3/lib3.mk
include src.mk

_TEMP = .tmp
VPATH += $(_TEMP)
_SRCS = $(wildcard *.c) $(wildcard *.cc) $(wildcard *.cpp)
_OBJS = $(addprefix $(_TEMP)/,$(addsuffix .o,$(basename $(_SRCS))))
_DEPS = $(_OBJS:%.o=%.d)
_EXEC = ../bin/hello_world

all: release

debug: CPPFLAGS += -O0 -D_DEBUG
debug: build

release: CPPFLAGS += -O2 -D_RELEASE
release: build
	
build: $(_TEMP) $(_EXEC)

clean:
	rm -rf $(_OBJS)
	rm -rf $(_DEPS)
	rm -rf $(_EXEC)
	rm -rf $(_TEMP)

depend: $(_DEPS) $(MAKEFILE_LIST)

temp:
	@echo "_ABSDIR  ="$(_ABSDIR)
	@echo "_RELDIR  ="$(_RELDIR)

$(_OBJS): $(MAKEFILE_LIST)

$(_EXEC): $(_OBJS) $(MAKEFILE_LIST)
	$(LINK.cc) -o $@ $(_OBJS) $(LOADLIBES) $(LDLIBS)

$(_TEMP):
	mkdir -p $@

$(_TEMP)/%.d: %.c
	$(COMPILE.c) -MM $< > $@

$(_TEMP)/%.d: %.cc
	$(COMPILE.cc) -MM $< > $@

$(_TEMP)/%.d: %.cpp
	$(COMPILE.cpp) -MM $< > $@

$(_TEMP)/%.o: %.c
	$(COMPILE.c) $(OUTPUT_OPTION) $<

$(_TEMP)/%.o: %.cc
	$(COMPILE.cc) $(OUTPUT_OPTION) $<

$(_TEMP)/%.o: %.cpp
	$(COMPILE.cpp) $(OUTPUT_OPTION) $<

_NODEPS=clean depend temp
ifeq (0, $(words $(findstring $(MAKECMDGOALS), $(_NODEPS))))
	-include $(_DEPS)
endif
