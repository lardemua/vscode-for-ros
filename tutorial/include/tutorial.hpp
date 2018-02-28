#ifndef TUTORIAL_HPP
#define TUTORIAL_HPP

#include <string>

class Tutorial
{
public:
  Tutorial(int some_var, float another_var, std::string name);

  std::string to_string();

  const int& some_var();
  float& another_var();
  const std::string& name();

private:
  int _some_var;
  float _another_var;
  std::string _name;
};

#endif