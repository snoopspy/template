* When foo.o is required, make command find the following order.
```
  1. foo.c   (cc    -c -o foo.o foo.c)
  2. foo.cc  (g++    -c -o foo.o foo.cc)
  3. foo.cpp (g++    -c -o foo.o foo.cpp)
```
