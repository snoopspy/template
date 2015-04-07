# ------------------------------------------------------------------------------
# lib/lib1/makefile
# ------------------------------------------------------------------------------

.PHONY: all debug release build clean depend temp





_TEMP = .tmp
VPATH += $(_TEMP)
_SRCS = $(wildcard *.c) $(wildcard *.cc) $(wildcard *.cpp)
_OBJS = $(addprefix $(_TEMP)/,$(addsuffix .o,$(basename $(_SRCS))))
_DEPS = $(_OBJS:%.o=%.d)
_LIB  = lib$(shell basename $(PWD)).a

CPPFLAGS += -Wall -g
LDLIBS += -lpthread

all: release

debug: CPPFLAGS += -O0 -D_DEBUG
debug: build

release: CPPFLAGS += -O2 -D_RELEASE
release: build

build: $(_TEMP) $(_LIB)

clean:
	rm -rf $(_OBJS)
	rm -rf $(_DEPS)	
	rm -rf $(_LIB)
	rm -rf $(_TEMP)

depend: $(_DEPS) $(MAKEFILE_LIST)

temp:
	@echo "lib/lib1 temp"
	@echo "_ABSDIR="$(_ABSDIR)
	@echo "_RELDIR="$(_RELDIR)
	@echo "_SRCS  ="$(_SRCS)
	@echo "_OBJS  ="$(_OBJS)
	@echo "_DEPS  ="$(_DEPS)

$(_OBJS): $(MAKEFILE_LIST)

$(_LIB): $(_OBJS) $(MAKEFILE_LIST)
	$(AR) $(ARFLAGS) -o $@ $(_OBJS)

$(_TEMP):
	mkdir -p $@

$(_TEMP)/%.d: %.c
	$(COMPILE.c) -MM $< > $@

$(_TEMP)/%.d: %.cc
	$(COMPILE.cc) -MM $< > $@

$(_TEMP)/%.d: %.cpp
	$(COMPILE.cpp) -MM $< > $@

$(_TEMP)/%.o: %.c
	$(COMPILE.c) $(OUTPUT_OPTION) $<

$(_TEMP)/%.o: %.cc
	$(COMPILE.cc) $(OUTPUT_OPTION) $<

$(_TEMP)/%.o: %.cpp
	$(COMPILE.cpp) $(OUTPUT_OPTION) $<

_NODEPS=clean depend temp
ifeq (0, $(words $(findstring $(MAKECMDGOALS), $(_NODEPS))))
	-include $(_DEPS)
endif
