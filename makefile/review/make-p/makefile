SRCS = $(wildcard *.c) $(wildcard *.cc) $(wildcard *.cpp) $(wildcard *.cxx)
OBJS = $(addsuffix .o,$(basename $(SRCS)))
EXEC = $(shell basename $(PWD))

CFLAGS    = -DCFLAGS
CXXFLAGS  = -DCXXFLAGS
CPPFLAGS  = -DCPPFLAGS

LDFLAGS   = -DLDFLAGS

LOADLIBES = -DLOADLIBES
LDLIBS    = -DLDLIBS

all: release

debug: CPPFLAGS += -DDEBUG
debug: $(EXEC)

release: CPPFLAGS += -DRELEASE
release: $(EXEC)

%.o: %.cxx
	$(COMPILE.cc) $(OUTPUT_OPTION) $<

$(EXEC): $(OBJS)
	$(LINK.cc) -o $@ $(OBJS) $(LOADLIBES) $(LDLIBS)

list:
	@echo "SRCS="$(SRCS)
	@echo "OBJS="$(OBJS)

clean:
	rm -rf *.o
	rm -rf $(EXEC)
