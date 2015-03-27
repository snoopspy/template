SOURCES += $(wildcard *.c)   $(wildcard *.cc)   $(wildcard *.cpp)   $(wildcard *.cxx)
SOURCES += $(wildcard */*.c) $(wildcard */*.cc) $(wildcard */*.cpp) $(wildcard */*.cxx)
OBJECTS = $(addsuffix .o,$(basename $(SOURCES)))
TARGET = $(shell basename $(PWD))

CFLAGS    = -DCFLAGS
CXXFLAGS  = -DCXXFLAGS
CPPFLAGS  = -DCPPFLAGS

LDFLAGS   = -DLDFLAGS

LOADLIBES = -DLOADLIBES
LDLIBS    = -DLDLIBS

first: all

all: release

debug: CPPFLAGS += -DDEBUG
debug: $(TARGET)

release: CPPFLAGS += -DRELEASE
release: $(TARGET)

%.o: %.cxx
	$(COMPILE.cc) $(OUTPUT_OPTION) $<

$(TARGET): $(OBJECTS)
	$(LINK.cc) -o $@ $(OBJECTS) $(LOADLIBES) $(LDLIBS)

list:
	@echo "SOURCES="$(SOURCES)
	@echo "OBJECTS="$(OBJECTS)

clean:
	rm -rf $(OBJECTS)
	rm -rf $(TARGET)
