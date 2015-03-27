SOURCES = $(wildcard *.cpp)
OBJECTS = $(addsuffix .o,$(basename $(SOURCES)))
TARGET  = $(shell basename $(PWD))

#CPPFLAGS
#LDLIBS
 
first: all

all: $(TARGET)
 
$(TARGET): $(OBJECTS)
	$(LINK.cc) -o $@ $(OBJECTS) $(LOADLIBES) $(LDLIBS)

show:
	@echo "TARGET="$(TARGET)
	@echo "OBJECTS="$(OBJECTS)

clean:
	rm -rf $(OBJECTS)
	rm -rf $(TARGET)

.PHONY: show
