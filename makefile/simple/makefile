.PHONY: all debug release build clean temp depend

_SRCS = $(wildcard *.cpp)
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_EXEC = $(shell basename $(PWD))

CPPFLAGS += -g

all: release

debug: CPPFLAGS += -O0
debug: build

release: CPPFLAGS += -O2
release: build

build: $(_EXEC)

$(_OBJS): $(MAKEFILE_LIST)

$(_EXEC): $(_OBJS) $(MAKEFILE_LIST)
	$(LINK.cc) -o $@ $(_OBJS) $(LOADLIBES) $(LDLIBS)

clean:
	rm -rf $(_OBJS)
	rm -rf $(_EXEC)

temp:
	@echo "MAKEFILE_LIST="$(MAKEFILE_LIST)
	@echo "CPPFLAGS="$(CPPFLAGS)

depend: .depend

.depend: $(_SRCS)
	rm -f ./.depend
	$(CXX) $(CPPFLAGS) -MM $(_SRCS) > ./.depend

include .depend
