#include <iostream>
#include "test2.h"

int main()
{
#ifdef _DEBUG
  std::cout << "main test2 _DEBUG\n";
#else
  std::cout << "main test2 _RELEASE\n";
#endif
  test2();
  return 0;
}
