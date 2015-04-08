#include <iostream>
#include "lib2.h"

void lib2()
{
  lib1();
#ifdef _DEBUG
  std::cout << "lib2 _DEBUG\n";
#else
  std::cout << "lib2 _RELEASE\n";
#endif
}
