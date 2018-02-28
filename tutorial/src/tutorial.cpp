#include <sstream>

#include "tutorial.hpp"

Tutorial::Tutorial(int some_var, float another_var, std::string name)
  : _some_var(some_var)
  , _another_var(another_var)
  , _name(name)
{}

std::string
Tutorial::to_string()
{
  std::ostringstream oss;
  oss << "Tutorial{ " << name() << ", " << some_var() << ", " << another_var()
      << "}";
  return oss.str();
}

const int&
Tutorial::some_var()
{
  return _some_var;
}

float&
Tutorial::another_var()
{
  return _another_var;
}

const std::string&
Tutorial::name()
{
  return _name;
}
