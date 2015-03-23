#include <iostream>

int main()
{
#ifdef _DEBUG
  std::cout << "_DEBUG" << std::endl;
#else
  std::cout << "not _DEBUG" << std::endl;
#endif // _DEBUG
  std::cout << "hello world" << std::endl;
}
