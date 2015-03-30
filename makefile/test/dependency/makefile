.PHONY: all debug release build clean temp depend

_SRCS = $(wildcard *.cpp) $(wildcard *.c)
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_EXEC  = $(shell basename $(PWD))
 
all: $(_EXEC)
 
$(_EXEC): $(_OBJS)
	$(LINK.cc) -o $@ $(_OBJS) $(LOADLIBES) $(LDLIBS)

clean:
	rm -rf $(_OBJS)
	rm -rf $(_EXEC)

depend: .depend

.depend:
	rm -f ./.depend
	$(CXX) $(CPPFLAGS) -MM $(_SRCS) > ./.depend

include .depend
