#include "expression.hpp"

#include <cmath>
#include <limits>
#include <cctype>
#include <ctype.h>
#include <string>
// system includes
#include <sstream>
using namespace std;
Expression::Expression(bool tf){
  // TODO: implement this function
	head.type = BooleanType;
	head.value.bool_value = tf;
}
Expression::Expression(double num){
  // TODO: implement this function
	head.type = NumberType;
	head.value.num_value = num;
}
Expression::Expression(const std::string & sym){
  // TODO: implement this function
	head.type = SymbolType;
	head.value.sym_value = sym;
}
Expression::Expression(std::tuple<double, double> value) {
	head.type = PointType;
	head.value.point_value.x = get<0>(value);
	head.value.point_value.y = get<1>(value);
}
Expression::Expression(std::tuple<double, double> start, std::tuple<double, double> end) {
	head.type = LineType;
	head.value.line_value.first.x = get<0>(start);
	head.value.line_value.first.y= get<1>(start);
	head.value.line_value.second.x = get<0>(end);
	head.value.line_value.second.y = get<1>(end);
}
Expression::Expression(std::tuple<double, double> center, std::tuple<double, double> start, double angle) {
	head.type = ArcType;
	head.value.arc_value.center.x = get<0>(center);
	head.value.arc_value.center.y = get<1>(center);
	head.value.arc_value.start.x = get<0>(start);
	head.value.arc_value.start.y = get<1>(start);
	head.value.arc_value.span = angle;
}
bool Expression::operator==(const Expression & exp) const noexcept{//  2
	if (this->head.type != exp.head.type) {
		return false;
	}
	if (this->head.type == NoneType) {
		return true;
	}
	if (this->head.type == BooleanType) {
		if (this->head.value.bool_value != exp.head.value.bool_value) {
				return false;			
		}
	}
	else if (this->head.type == NumberType) {
		if (this->head.value.num_value != exp.head.value.num_value) {
			return false;
		}
	}
	else if (this->head.type == SymbolType) {
		if (this->head.value.sym_value != exp.head.value.sym_value) {
			return false;
		}
	}
	else if (this->head.type==PointType) {
		if (this->head.value.point_value.x != exp.head.value.point_value.x) {
			return false;
		}
		if (this->head.value.point_value.y != exp.head.value.point_value.y) {
			return false;
		}
	}
	else if (this->head.type == LineType) {
		if (this->head.value.line_value.first.x != exp.head.value.line_value.first.x) {
			return false;
		}
		if (this->head.value.line_value.first.y != exp.head.value.line_value.first.y) {
			return false;
		}
		if (this->head.value.line_value.second.x != exp.head.value.line_value.second.x) {
			return false;
		}
		if (this->head.value.line_value.second.y != exp.head.value.line_value.second.y) {
			return false;
		}}
	else if (this->head.type == ArcType) {
		if (this->head.value.arc_value.center.x != exp.head.value.arc_value.center.x) {
			return false;
		}
		if (this->head.value.arc_value.center.y != exp.head.value.arc_value.center.y) {
			return false;
		}
		if (this->head.value.arc_value.start.x != exp.head.value.arc_value.start.x) {
			return false;
		}
		if (this->head.value.arc_value.start.y != exp.head.value.arc_value.start.y) {
			return false;
		}
		if (this->head.value.arc_value.span != exp.head.value.arc_value.span) {
			return false;
		}}
  return true;
}
std::ostream & operator<<(std::ostream & out, const Expression & exp){
  // TODO: implement this function
	//output the value of the head.
	if (exp.head.type == BooleanType) {
		std::string booloutput;
		if (exp.head.value.bool_value) {
			booloutput = "True";
		}
		else if (!exp.head.value.bool_value ) {
			booloutput = "False";
		}
		out << "(" << booloutput << ")" << std::endl;;
	}
	else if (exp.head.type == NumberType) {
		out << "(" << exp.head.value.num_value << ")" << std::endl;
	}
	else if (exp.head.type == SymbolType) {
		out << "(" << exp.head.value.sym_value << ")" << std::endl;
	}
	else if (exp.head.type == NoneType) {
		out << "( "<< ")" << std::endl;
	}
	else {
		out << "Error: the expression is invalid." << std::endl;
	}
  return out;
}
bool token_to_atom(const std::string & token, Atom & atom){
  // TODO: implement this function
  // return true if it a token is valid. otherwise, return false.
	//a symbol and a number
	//3a invalid return false
	if (issymbol(token)) {
		atom.type = SymbolType;
		atom.value.sym_value = token;
	}
	else if (isvalue(token)) {
		atom.type = NumberType;
		atom.value.num_value = stod(token);
	}
	else if (token == "True") {
		atom.type = BooleanType;
		atom.value.bool_value = true;
	}
	else if (token == "true") {
		atom.type = BooleanType;
		atom.value.bool_value = true;
	}
	else if (token == "false") {
		atom.type = BooleanType;
		atom.value.bool_value = false;
	}
	else if (token == "False") {
		atom.type = BooleanType;
		atom.value.bool_value = false;
	}
	else {
		return false;
	}
  return true;
}
bool issymbol(const std::string & token) {
		if (isdigit(token[0])!=0) {
			return false;
		}
		if (token == "True") {
			return false;
		}
		if (token == "False") {
			return false;
		}
		if (token == "true") {
			return false;
		}
		if (token == "false") {
			return false;
		}
		if (token[0] == '+') {
			if (isdigit(token[1])!=0) {
				return false;
			}
		}
		 if (token[0] == '-') {
			if (isdigit(token[1])!=0) {
				return false;
			}
		}
	return true;
}
bool isvalue(const std::string& token) {
	auto dot = 0;
	auto ecount = 0;
	for (unsigned int i=0; i < token.length(); i++) {
		if (token[i] == '.') {
			dot++;
			if (dot > 1) {
				return false;
			}
		}
		if (isdigit(token[i])==0) {
			if (token[i] != '.') {
				if (token[i] != '+') {
					if (token[i] != '-') {
						if (token[i]!= 'e') {
							return false;
						}
					}
				}
			}
		}
		if (token[i] == 'e') {
			ecount++;
			if (ecount > 1) {
				return false;
			}
		}
	}
	return true;
}