#include <iostream>
#include <myliba.h>
#include "src1.h"
#include "src2.h"
#include "src3.h"

int main()
{
  std::cout << "beg main\n";
  myliba();
  src1();
  src2();
  src3();
  std::cout << "end main\n";
  return 0;
}
