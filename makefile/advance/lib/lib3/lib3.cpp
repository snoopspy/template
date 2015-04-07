#include <iostream>
#include "lib3.h"

void lib3()
{
  lib2();
#ifdef _DEBUG
  std::cout << "lib3 _DEBUG\n";
#else
  std::cout << "lib3 _RELEASE\n";
#endif
}
