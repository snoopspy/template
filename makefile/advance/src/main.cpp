#include <iostream>
#include "src1.h"
#include "src2.h"
#include "src3.h"

int main()
{
#ifdef _DEBUG
  std::cout << "main src _DEBUG\n";
#else
  std::cout << "main src _RELEASE\n";
#endif
  src1();
  std::cout << std::endl;
  src2();
  std::cout << std::endl;
  src3();
  return 0;
}
