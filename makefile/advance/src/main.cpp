#include <iostream>
#include "src1.h"
#include "src2.h"
#include "src3.h"

int main()
{
  std::cout << "main src\n";
  src1();
  std::cout << std::endl;
  src2();
  std::cout << std::endl;
  src3();
  return 0;
}
