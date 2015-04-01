# ------------------------------------------------------------------------------
# lib/myliba/mylibb/mylibc/makefile
# ------------------------------------------------------------------------------

.PHONY: all debug release build clean temp depend





_SRCS = $(wildcard *.cpp)
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

temp:
	@echo "lib/myliba/mylibb/mylibc temp"

depend: $(_DEPS) $(MAKEFILE_LIST)

$(_OBJS): $(MAKEFILE_LIST)

$(_LIB): $(_OBJS) $(MAKEFILE_LIST)
	$(AR) $(ARFLAGS) -o $@ $(_OBJS)

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
