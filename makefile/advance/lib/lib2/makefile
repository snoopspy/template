# ------------------------------------------------------------------------------
# lib/lib2/makefile
# ------------------------------------------------------------------------------

.PHONY: all debug release build clean depend temp

_ABSDIR := $(shell dirname $(PWD))
_RELDIR := ..
include ../lib1/lib1.mk

_TMPDIR = .tmp
_SRCS = $(wildcard *.c) $(wildcard *.cc) $(wildcard *.cpp)
_OBJS = $(addprefix $(_TMPDIR)/,$(addsuffix .o,$(basename $(_SRCS))))
_DEPS = $(_OBJS:%.o=%.d)
_LIB  = lib$(shell basename $(PWD)).a

CPPFLAGS += -Wall -g
LDLIBS += -lpthread

all: release

debug: CPPFLAGS += -O0 -D_DEBUG
debug: build

release: CPPFLAGS += -O2 -D_RELEASE
release: build

build: $(_TMPDIR) $(_LIB)

clean:
	rm -rf $(_OBJS)
	rm -rf $(_DEPS)	
	rm -rf $(_LIB)
	rm -rf $(_TMPDIR)

depend: $(_DEPS) $(MAKEFILE_LIST)

temp:
	@echo "lib/lib2 temp"
	@echo "_ABSDIR"=$(_ABSDIR)
	@echo "_RELDIR"=$(_RELDIR)

$(_OBJS): $(MAKEFILE_LIST) | $(_TMPDIR)

$(_LIB): $(_OBJS) $(MAKEFILE_LIST)
	$(AR) $(ARFLAGS) -o $@ $(_OBJS)

$(_TMPDIR):
	if [ ! -d $@ ] ; then mkdir $@ ; fi

$(_TMPDIR)/%.d: %.c | $(_TMPDIR)
	$(COMPILE.c) -MM $< | sed "s^$*.o^$(_TMPDIR)/$*.o^" > $@

$(_TMPDIR)/%.d: %.cc | $(_TMPDIR)
	$(COMPILE.cc) -MM $< | sed "s^$*.o^$(_TMPDIR)/$*.o^" > $@

$(_TMPDIR)/%.d: %.cpp | $(_TMPDIR)
	$(COMPILE.cpp) -MM $< | sed "s^$*.o^$(_TMPDIR)/$*.o^" > $@

$(_TMPDIR)/%.o: %.c
	$(COMPILE.c) $(OUTPUT_OPTION) $<

$(_TMPDIR)/%.o: %.cc
	$(COMPILE.cc) $(OUTPUT_OPTION) $<

$(_TMPDIR)/%.o: %.cpp
	$(COMPILE.cpp) $(OUTPUT_OPTION) $<

_NODEPS=clean depend temp $(_TMPDIR) $(_TMPDIR)
ifeq (0, $(words $(findstring $(MAKECMDGOALS), $(_NODEPS))))
	-include $(_DEPS)
endif
