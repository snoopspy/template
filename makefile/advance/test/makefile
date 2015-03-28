# ------------------------------------------------------------------------------
# test/makefile
# ------------------------------------------------------------------------------

_SUB_PROJS := test1 test2
.PHONY: all debug release build clean temp depend $(_SUB_PROJS)

_SRCS = $(shell find $(TARGET) -name "*.cpp")
_OBJS = $(addsuffix .o,$(basename $(_SRCS)))
_EXEC = ../bin/$(TARGET)

all: debug
debug: CPPFLAGS += -O0
debug: build
release: CPPFLAGS += -O2
release: build
build: $(_EXEC)
clean:
	find -name "*.o" -type f -exec rm '{}' \;
	rm ../bin/*
	
$(TARGET): $(_EXEC)
	@#echo "_SUB_PROJS="$(_SUB_PROJS)
	@echo "_SRCS     ="$(_SRCS)
	@echo "_OBJS     ="$(_OBJS)
	@echo "_EXEC     ="$(_EXEC)
	
depend:

$(_EXEC): $(_OBJS)
	$(LINK.cc) -o $@ $(_OBJS) $(LOADLIBES) $(LDLIBS)
