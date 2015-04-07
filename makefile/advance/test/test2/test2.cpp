#include <iostream>
#include "test2.h"

void test2()
{
#ifdef _DEBUG
  std::cout << "test2 _DEBUG\n";
#else
  std::cout << "test2 _RELEASE\n";
#endif
  lib2();
  src2();
}
