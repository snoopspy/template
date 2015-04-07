#include <iostream>
#include "test1.h"

int main()
{
#ifdef _DEBUG
  std::cout << "main test1 _DEBUG\n";
#else
  std::cout << "main test1 _RELEASE\n";
#endif
  test1();
  return 0;
}
