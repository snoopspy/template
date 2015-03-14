SRCS = $(wildcard *.cpp)
OBJS = $(addsuffix .o,$(basename $(SRCS)))
EXEC = $(shell basename $(PWD))
 
all: $(EXEC)
 
$(EXEC): $(OBJS)
	$(LINK.cc) -o $@ $(OBJS) $(LOADLIBES) $(LDLIBS)
 
clean:
	rm -rf *.o
	rm -rf $(EXEC)
