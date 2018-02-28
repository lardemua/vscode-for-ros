#include <algorithm>
#include <functional>
#include <iostream>
#include <vector>

#include "tutorial.hpp"

int main()
{
  auto tut = Tutorial{1, 1.0, "vscode tutorial"};

  tut.another_var() = 2.0f;

  std::cout << tut.to_string() << std::endl;

  return 0;
}
