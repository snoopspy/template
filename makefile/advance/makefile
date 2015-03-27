ifeq ($(MAKECMDGOALS),debug)
CXXFLAGS += -Wall -g -O0 -D_DEBUG
else
CXXFLAGS += -Wall -g -O2
endif

SOURCES = $(wildcard *.cpp) $(wildcard *.cc) $(wildcard *.c)
OBJECTS = $(addsuffix .o,$(basename $(SOURCES)))
TARGET  = $(shell basename $(PWD))
 
all: $(TARGET)

debug: all

$(TARGET): $(OBJECTS)
	$(LINK.cc) -o $@ $(OBJECTS) $(LOADLIBES) $(LDLIBS)
 
clean:
	rm -rf $(OBJECTS)
	rm -rf $(TARGET)
