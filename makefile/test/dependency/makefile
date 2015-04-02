.PHONY: all debug release build clean depend temp

_SRCS = $(wildcard *.c) $(wildcard *.cc) $(wildcard *.cpp)
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_DEPS = $(_OBJS:%.o=%.d)
_EXEC = $(shell basename $(PWD))

CPPFLAGS += -Wall -g
LDLIBS += -lpthread

all: release

debug: CPPFLAGS += -O0
debug: build

release: CPPFLAGS += -O2
release: build

build: $(_EXEC)

clean:
	rm -rf $(_OBJS)
	rm -rf $(_DEPS)
	rm -rf $(_EXEC)

depend: $(_DEPS) $(MAKEFILE_LIST)

temp:
	@echo "MAKEFILE_LIST="$(MAKEFILE_LIST)

$(_OBJS): $(MAKEFILE_LIST)

$(_EXEC): $(_OBJS) $(MAKEFILE_LIST)
	$(LINK.cc) -o $@ $(_OBJS) $(LOADLIBES) $(LDLIBS)

%.d: %.c
	$(COMPILE.c) -MM $< > $@

%.d: %.cc
	$(COMPILE.cc) -MM $< > $@

%.d: %.cpp
	$(COMPILE.cc) -MM $< > $@

_NODEPS=clean temp depend
ifeq (0, $(words $(findstring $(MAKECMDGOALS), $(_NODEPS))))
	-include $(_DEPS)
endif
