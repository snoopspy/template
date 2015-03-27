# ------------------------------------------------------------------------------
# src/makefile
# ------------------------------------------------------------------------------

.PHONY: all debug release build temp depend clean

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

debug: build

release: build

build: $(_TARGET)
	@echo "----- build -----" # gilgil temp

$(_EXECUTABLE): $(_OBJECTS)
	$(LINK.cc) -o $@ $(_OBJECTS) $(LOADLIBES) $(LDLIBS)

temp:
	@echo "CPPFLAGS="$(CPPFLAGS)
	@echo "TARGET="$(TARGET)

clean:
	rm -rf $(_OBJECTS)
	rm -rf $(_TARGET)

help:
	@echo "make all(default)"
	@echo "make debug"
	@echo "make release"
	@echo "make build"
	@echo "make temp"
	@echo "make clean"
	@echo "make help"
