#include <iostream>
#include "test3.h"

int main()
{
#ifdef _DEBUG
  std::cout << "main test3 _DEBUG\n";
#else
  std::cout << "main test3 _RELEASE\n";
#endif
  test3();
  return 0;
}
