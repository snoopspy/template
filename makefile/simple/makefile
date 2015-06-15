.PHONY: all debug release build clean depend temp

_TMPDIR = .tmp
_SRCS = $(wildcard *.c) $(wildcard *.cc) $(wildcard *.cpp)
_OBJS = $(addprefix $(_TMPDIR)/,$(addsuffix .o,$(basename $(_SRCS))))
_DEPS = $(_OBJS:%.o=%.d)
_EXEC = $(shell basename $(PWD))

CPPFLAGS += -Wall -g
LDLIBS += -lpthread

all: release

debug: CPPFLAGS += -O0 -D_DEBUG
debug: build

release: CPPFLAGS += -O2 -D_RELEASE
release: build

build: $(_TMPDIR) $(_EXEC)

clean:
	rm -rf $(_OBJS)
	rm -rf $(_DEPS)
	rm -rf $(_EXEC)
	rm -rf $(_TMPDIR)

depend: $(_DEPS) $(MAKEFILE_LIST)

temp:
	@echo "_ABSDIR  ="$(_ABSDIR)
	@echo "_RELDIR  ="$(_RELDIR)
	@echo "_OBJS ="$(_OBJS)
	@echo "_DEPS ="$(_DEPS)

$(_OBJS): $(MAKEFILE_LIST) | $(_TMPDIR)

$(_EXEC): $(_OBJS) $(MAKEFILE_LIST)
	$(LINK.cc) -o $@ $(_OBJS) $(LOADLIBES) $(LDLIBS)

$(_TMPDIR):
	if [ ! -d $@ ] ; then mkdir $@ ; fi

$(_TMPDIR)/%.o: %.c
	$(COMPILE.c) $(OUTPUT_OPTION) $<
	@$(COMPILE.c) -MM $< -MT $@ -MP -MF $(@:%.o=%.d)

$(_TMPDIR)/%.o: %.cc
	$(COMPILE.cc) $(OUTPUT_OPTION) $<
	@$(COMPILE.c) -MM $< -MT $@ -MP -MF $(@:%.o=%.d)

$(_TMPDIR)/%.o: %.cpp
	$(COMPILE.cpp) $(OUTPUT_OPTION) $<
	@$(COMPILE.c) -MM $< -MT $@ -MP -MF $(@:%.o=%.d)

_NODEPS=clean depend temp $(_TMPDIR)
ifeq (0, $(words $(findstring $(MAKECMDGOALS), $(_NODEPS))))
	-include $(_DEPS)
endif
