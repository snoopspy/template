#include <iostream>
#include "test3.h"

void test3()
{
#ifdef _DEBUG
  std::cout << "test3 _DEBUG\n";
#else
  std::cout << "test3 _RELEASE\n";
#endif
  lib3();
  src3();
}
