.PHONY: all clean

_SRCS = $(wildcard *.cpp)
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_EXEC = $(shell basename $(PWD))

all: $(_EXEC)
 
clean:
	rm -f ./.depend
	rm -rf $(_OBJS)
	rm -rf $(_EXEC)

$(_EXEC): $(_OBJS)
	$(LINK.cc) -o $@ $(_OBJS) $(LOADLIBES) $(LDLIBS)

.depend: $(_SRCS)
	rm -f ./.depend
	$(CXX) $(CPPFLAGS) -MM $^ > ./.depend

include .depend
