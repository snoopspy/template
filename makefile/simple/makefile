.PHONY: all clean temp

_SRCS = $(wildcard *.cpp)
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_EXEC = $(shell basename $(PWD))

all: $(_EXEC)

temp:
	@echo "MAKEFILE_LIST="$(MAKEFILE_LIST)

clean:
	rm -f ./.depend
	rm -rf $(_OBJS)
	rm -rf $(_EXEC)

.depend: $(_SRCS) $(MAKEFILE_LIST)
	rm -f ./.depend
	$(CXX) $(CPPFLAGS) -MM $(_SRCS) > ./.depend

include .depend

$(_OBJS): $(MAKEFILE_LIST)

$(_EXEC): $(_OBJS) $(MAKEFILE_LIST)
	$(LINK.cc) -o $@ $(_OBJS) $(LOADLIBES) $(LDLIBS)
