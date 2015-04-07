#include <iostream>
#include "src2.h"

void src2()
{
  lib2();
#ifdef _DEBUG
  std::cout << "src2 _DEBUG\n";
#else
  std::cout << "src2 _RELEASE\n";
#endif
}
