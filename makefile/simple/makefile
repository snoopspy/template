.PHONY: all debug release build clean depend temp

_TMPDIR = .tmp
_SRCS = $(wildcard *.c) $(wildcard *.cc) $(wildcard *.cpp)
_OBJS = $(addprefix ,$(addsuffix .o,$(basename $(_SRCS))))
#_OBJS = $(addsuffix .o, $(basename $(_SRCS)))
_DEPS = $(_OBJS:%.o=%.d)
#_DEPS = $(addsuffix .d, $(_SRCS))
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

create_d = @$(COMPILE.c) -MM $< | sed "s^$*.o^/$*.o^" > $*.d &&\
	mv -f $*.d $*.d.tmp &&\
	sed -e 's|.*:|$*.o:|' < $*.d.tmp > $*.d &&\
	sed -e 's/.*://' -e 's/\\$$//' < $*.d.tmp | fmt -1 | sed -e 's/^ *//' -e 's/$$/:/' >> $*.d &&\
	rm -f $*.d.tmp

%.o: %.c
	$(COMPILE.c) $(OUTPUT_OPTION) $<
	$(create_d)

%.o: %.cc
	$(COMPILE.cc) $(OUTPUT_OPTION) $<
	$(create_d)

%.o: %.cpp
	$(COMPILE.cpp) $(OUTPUT_OPTION) $<
	$(create_d)

_NODEPS=clean depend temp $(_TMPDIR)
ifeq (0, $(words $(findstring $(MAKECMDGOALS), $(_NODEPS))))
	-include $(_DEPS)
endif
