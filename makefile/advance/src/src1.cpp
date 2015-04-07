#include <iostream>
#include "src1.h"

void src1()
{
  lib1();
#ifdef _DEBUG
  std::cout << "src1 _DEBUG\n";
#else
  std::cout << "src1 _RELEASE\n";
#endif
}
