SOURCES = $(wildcard *.c) $(wildcard *.cc) $(wildcard *.cpp) $(wildcard *.cxx)
OBJECTS = $(SOURCES:.c=.o)
OBJECTS := $(OBJECTS:.cc=.o)
OBJECTS := $(OBJECTS:.cpp=.o)
OBJECTS := $(OBJECTS:.cxx=.o)
EXECUTABLE = $(shell basename $(PWD))

CFLAGS = -DCFLAGS
CXXFLAGS = -DCXXFLAGS
CPPFLAGS = -DCPPFLAGS

LDFLAGS = -DLDFLAGS

LOADLIBES = -DLOADLIBES
LDLIBS = -DLDLIBS

all: release

debug: CPPFLAGS += -DDEBUG
debug: $(EXECUTABLE)

release: CPPFLAGS += -DRELEASE
release: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(LINK.cc) -o $@ $(OBJECTS) $(LOADLIBES) $(LDLIBS)

%.o: %.cxx
	$(COMPILE.cc) $(OUTPUT_OPTION) $<

list:
	@echo "SOURCES="$(SOURCES)
	@echo "OBJECTS="$(OBJECTS)

clean:
	rm -rf *.o
	rm -rf $(EXECUTABLE)
