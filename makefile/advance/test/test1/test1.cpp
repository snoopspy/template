#include <iostream>
#include "test1.h"

void test1()
{
#ifdef _DEBUG
  std::cout << "test1 _DEBUG\n";
#else
  std::cout << "test1 _RELEASE\n";
#endif
  lib1();
  src1();
}
