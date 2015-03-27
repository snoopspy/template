SOURCES = $(wildcard *.cpp) $(wildcard *.c)
OBJECTS = $(addsuffix .o,$(basename $(SOURCES)))
TARGET  = $(shell basename $(PWD))
 
first: all

all: $(TARGET)
 
$(TARGET): $(OBJECTS)
	$(LINK.cc) -o $@ $(OBJECTS) $(LOADLIBES) $(LDLIBS)

depend: .depend

.depend: $(SOURCES)
		rm -f ./.depend
		$(CC) $(CFLAGS) -MM $^ > ./.depend;

include .depend

clean:
	rm -rf .depend
	rm -rf $(OBJECTS)
	rm -rf $(TARGET)
