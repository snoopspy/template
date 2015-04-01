#include <iostream>
#include "foo.h"
#include "bar.h"
#include "baz.h"

int main()
{
  std::cout << "hello world" << std::endl;
  foo();
  bar();
  baz();
  return 0;
}
