#ifndef ENVIRONMENT_HPP
#define ENVIRONMENT_HPP

// system includes
#include <map>
#include <cmath>
// module includes
#include "expression.hpp"

class Environment{
public:
  Environment();
  bool isprocedure(Symbol symbol);
  Procedure mapping(Symbol symbol);
  Expression getexpression(Symbol symbol);

private:

  // Environment is a mapping from symbols to expressions or procedures
  enum EnvResultType {ExpressionType, ProcedureType};
  struct EnvResult{
    EnvResultType type;
    Expression exp;
    Procedure proc;
  };
  
  std::map<Symbol, EnvResult> envmap; 
};


Expression enot(const std::vector<Atom>& args);
Expression eand (const std::vector<Atom>& args);
Expression eor (const std::vector<Atom>&args);
Expression smaller(const std::vector<Atom>& args);
Expression smallerandequal(const std::vector<Atom>& args);
Expression grater(const std::vector<Atom>& args);
Expression graterandequal(const std::vector<Atom>& args);
Expression equal(const std::vector<Atom>& args);
Expression plus(const std::vector<Atom>& args);
Expression minusandnegative(const std::vector<Atom>& args);
Expression multi(const std::vector<Atom>& args);
Expression divide(const std::vector<Atom>& args);
Expression log10method(const std::vector<Atom>& args);
Expression power(const std::vector<Atom>& args);
Expression IF(const std::vector<Atom>& args);
Expression Begin(const std::vector<Atom>& args);
Expression Define(const std::vector<Atom>& args);
Expression POINT1(const std::vector<Atom>& args);
Expression SIN(const std::vector<Atom>& args);
Expression COS(const std::vector<Atom>& args);
Expression ARCTAN(const std::vector<Atom>& args);
Expression LINE(const std::vector<Atom>& args);
Expression ARC(const std::vector<Atom>& args);
Expression DRAW(const std::vector<Atom>& args);
bool isprocedure1(Symbol symbol);
#endif


