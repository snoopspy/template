#include <iostream>
#include "lib1.h"

void lib1()
{
#ifdef _DEBUG
  std::cout << "lib1 _DEBUG\n";
#else
  std::cout << "lib1 _RELEASE\n";
#endif
}
