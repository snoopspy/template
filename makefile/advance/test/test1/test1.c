#include <stdio.h>
#include "test1.h"

void test1()
{
#ifdef _DEBUG
  printf("test1 _DEBUG\n");
#else
  printf("test1 _RELEASE\n");
#endif
  lib1();
  src1();
}
