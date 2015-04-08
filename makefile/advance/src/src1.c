#include <stdio.h>
#include "src1.h"

void src1()
{
  lib1();
#ifdef _DEBUG
  printf("src1 _DEBUG\n");
#else
  printf("src1 _RELEASE\n");
#endif
}
