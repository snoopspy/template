#include <iostream>
#include <lib3.h>
#include "src1.h"
#include "src2.h"
#include "src3.h"

int main()
{
  std::cout << "main src\n";
  lib3();
  src1();
  src2();
  src3();
  return 0;
}
