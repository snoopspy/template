SOURCES = $(wildcard *.cpp)
OBJECTS = $(addsuffix .o,$(basename $(SOURCES)))
TARGET  = $(shell basename $(PWD))
 
all: $(TARGET)
 
$(TARGET): $(OBJECTS)
	$(LINK.cc) -o $@ $(OBJECTS) $(LOADLIBES) $(LDLIBS)
 
clean:
	rm -rf *.o
	rm -rf $(TARGET)
