.PHONY: all debug release build clean temp depend

_SRCS = $(wildcard *.c) $(wildcard *.cc) $(wildcard *.cpp)
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_DEPS = $(_OBJS:%.o=.deps/%.d)
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

temp:
	@echo "_DEPS="$(_DEPS)
	@echo "COMPILE.cc="$(COMPILE.cc)

depend: $(_DEPS) $(MAKEFILE_LIST)

_NODEPS=clean temp
ifeq (0, $(words $(findstring $(MAKECMDGOALS), $(_NODEPS))))
	-include $(_DEPS)
endif

.deps/%.d: %.c
	@mkdir -p .deps
	$(COMPILE.c) -MM $< > $@

.deps/%.d: %.cc
	@mkdir -p .deps
	$(COMPILE.cc) -MM $< > $@
	
.deps/%.d: %.cpp
	@mkdir -p .deps
	$(COMPILE.cc) -MM $< > $@

$(_OBJS): $(MAKEFILE_LIST)

$(_EXEC): $(_OBJS) $(MAKEFILE_LIST)
	$(LINK.cc) -o $@ $(_OBJS) $(LOADLIBES) $(LDLIBS)
	
