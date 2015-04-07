#include <iostream>
#include "src3.h"

void src3()
{
  lib3();
#ifdef _DEBUG
  std::cout << "src3 _DEBUG\n";
#else
  std::cout << "src3 _RELEASE\n";
#endif
}
