|                 | Command | CFLAGS | CXXFLAGS | CPPFLAGS | LDFLAGS |
|-----------------|---------|--------|----------|----------|---------|
| COMPILE.c       |  $(CC)  |    O   |          |     O    |         |
| COMPILE.cc(cpp) |  $(CXX) |        |     O    |     O    |         |
| LINK.c          |  $(CC)  |    O   |          |     O    |    O    |
| LINK.cc(cpp)    |  $(CXX) |        |     O    |     O    |    O    |

```
OUTPUT_OPTION = -o $@

COMPILE.c   = $(CC)  $(CFLAGS)   $(CPPFLAGS) $(TARGET_ARCH) -c
COMPILE.cc  = $(CXX) $(CXXFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c
COMPILE.cpp = $(COMPILE.cc)

.c.o:
	$(COMPILE.c) $(OUTPUT_OPTION) $<

.cc.o:
	$(COMPILE.cc) $(OUTPUT_OPTION) $<

.cpp.o:
	$(COMPILE.cpp) $(OUTPUT_OPTION) $<

LINK.c =  $(CC)  $(CFLAGS)   $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)
LINK.cc = $(CXX) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)
LINK.cpp = $(LINK.cc)
```
