_SRCS = $(wildcard *.cpp) $(wildcard *.c)
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_EXEC  = $(shell basename $(PWD))
 
first: all

all: $(_EXEC)
 
$(_EXEC): $(_OBJS)
	$(LINK.cc) -o $@ $(_OBJS) $(LOADLIBES) $(LDLIBS)

clean:
	rm -rf .depend
	rm -rf $(_OBJS)
	rm -rf $(_EXEC)

depend: .depend

.depend: $(_SRCS)
	rm -f ./.depend
	$(CXX) $(CPPFLAGS) -MM $(_SRCS) > ./.depend

include .depend
