#include <stdio.h>
#include "lib1.h"

void lib1()
{
#ifdef _DEBUG
  printf("lib1 _DEBUG\n");
#else
  printf("lib1 _RELEASE\n");
#endif
}
