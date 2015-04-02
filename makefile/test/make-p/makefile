.PHONY: all debug release build clean temp

_SRCS += $(wildcard *.c)   $(wildcard *.cc)   $(wildcard *.cpp)   $(wildcard *.cxx)
_SRCS += $(wildcard */*.c) $(wildcard */*.cc) $(wildcard */*.cpp) $(wildcard */*.cxx)
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_EXEC = $(shell basename $(PWD))

CFLAGS    = -DCFLAGS
CXXFLAGS  = -DCXXFLAGS
CPPFLAGS  = -DCPPFLAGS
LDFLAGS   = -DLDFLAGS
LOADLIBES = -DLOADLIBES
LDLIBS    = -DLDLIBS

all: release

debug: CPPFLAGS += -DDEBUG
debug: build

release: CPPFLAGS += -DRELEASE
release: build

build: $(_EXEC)

clean:
	rm -rf $(_OBJS)
	rm -rf $(_EXEC)

temp:
	@echo "_SRCS="$(_SRCS)
	@echo "_OBJS="$(_OBJS)

%.o: %.cxx
	$(COMPILE.cc) $(OUTPUT_OPTION) $<

$(_OBJS): $(MAKEFILE_LIST)

$(_EXEC): $(_OBJS) $(MAKEFILE_LIST)
	$(LINK.cc) -o $@ $(_OBJS) $(LOADLIBES) $(LDLIBS)
