# ------------------------------------------------------------------------------
# src/makefile
# ------------------------------------------------------------------------------

.PHONY: all debug release build clean temp

_SRCS = $(wildcard *.cpp) $(wildcard *.cc) $(wildcard *.c)
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_EXEC = $(shell basename $(PWD))

CPPFLAGS += -g

#
# targets
#
all: release
	@echo "src all"

debug: CPPFLAGS += -O0 -D_DEBUG
debug: build
	@echo "src debug"

release: CPPFLAGS += -O2 -D_RELEASE -DNDEBUG
release: build
	@echo "src release"
	
build: $(_TARGET)
	@echo "src build"

clean:
	@echo "src clean"
	rm -rf $(_OBJS)
	rm -rf $(_TARGET)

temp:
	@echo "src temp"
	@echo "CPPFLAGS="$(CPPFLAGS)
	@echo "TARGET="$(TARGET)

.depend: $(_SRCS) $(MAKEFILE_LIST)
	rm -f ./.depend
	$(CXX) $(CPPFLAGS) -MM $(_SRCS) > ./.depend

include .depend

$(_OBJS): $(MAKEFILE_LIST)

$(_EXEC): $(_OBJS) $(MAKEFILE_LIST)
	$(LINK.cc) -o $@ $(_OBJS) $(LOADLIBES) $(LDLIBS)
