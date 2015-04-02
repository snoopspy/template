# ------------------------------------------------------------------------------
# test/makefile
# ------------------------------------------------------------------------------

_SUBDIRS := test1 test2
.PHONY: all debug release build clean depend temp $(_SUBDIRS)

_SRCS = $(wildcard */*.c) $(wildcard */*.cc) $(wildcard */*.cpp)
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_DEPS = $(_OBJS:%.o=%.d)
_EXEC = $(addprefix ../bin/,$(_SUBDIRS))

CPPFLAGS += -Wall -g
LDLIBS += -lpthread

all: debug

debug: CPPFLAGS += -O0
debug: build

release: CPPFLAGS += -O2
release: build

build: $(_SUBDIRS)

clean:
	rm -rf $(_OBJS)
	rm -rf $(_DEPS)
	rm -rf $(_EXEC)

depend: $(_DEPS) $(MAKEFILE_LIST)

temp:
	@echo "_SRCS="$(_SRCS)
	@echo "_OBJS="$(_OBJS)
	@echo "_DEPS="$(_DEPS)
	@echo "_SUBDIRS="$(_SUBDIRS)
	@echo "_EXEC="$(_EXEC)

$(_OBJS): $(MAKEFILE_LIST)

$(_EXEC): $(_OBJS) $(MAKEFILE_LIST)
	$(LINK.cc) -o ../bin/$@ $(shell ls $(addsuffix /*.o,$(notdir $@))) $(LOADLIBES) $(LDLIBS)

$(_SUBDIRS): $(_EXEC)

#$(_SUBDIRS): $(_OBJS) $(MAKEFILE_LIST)
#	@#echo "_SUB_OBJS="$(shell ls $(basename $@)/*.o)
#	@echo "______"$@
#	@#echo "_SUB_OBJS="$(shell ls $(basename $@)/*.o)
#	$(LINK.cc) -o ../bin/$@ $(shell ls $@/*.o) $(LOADLIBES) $(LDLIBS)

%.d: %.c
	$(COMPILE.c) -MM $< > $@
	
%.d: %.cc
	$(COMPILE.cc) -MM $< > $@

%.d: %.cpp
	$(COMPILE.cc) -MM $< > $@

_NODEPS=clean depend temp
ifeq (0, $(words $(findstring $(MAKECMDGOALS), $(_NODEPS))))
	-include $(_DEPS)
endif
