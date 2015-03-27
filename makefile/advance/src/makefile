# ------------------------------------------------------------------------------
# src/makefile
# ------------------------------------------------------------------------------

.PHONY: all debug release build temp depend clean subdirs

#
# debug and release option
#
ifeq ($(MAKECMDGOALS),debug)
CPPFLAGS += -O0 -D_DEBUG
else
CPPFLAGS += -O2 -D_RELEASE
endif

#
# sources, objects and executable
#
_SOURCES    = $(wildcard *.cpp) $(wildcard *.cc) $(wildcard *.c)
_OBJECTS    = $(addsuffix .o,$(basename $(_SOURCES)))
_EXECUTABLE = $(shell basename $(PWD))

#
# targets
#
all: release
	@echo "src all"
	
debug: build
	@echo "src debug"

release: build
	@echo "src release"
	
build: $(_TARGET)
	@echo "src build"

clean:
	@echo "src clean"
	rm -rf $(_OBJECTS)
	rm -rf $(_TARGET)

depend:

temp:
	@echo "src build"
	@echo "CPPFLAGS="$(CPPFLAGS)
	@echo "TARGET="$(TARGET)

$(_EXECUTABLE): $(_OBJECTS)
	$(LINK.cc) -o $@ $(_OBJECTS) $(LOADLIBES) $(LDLIBS)
