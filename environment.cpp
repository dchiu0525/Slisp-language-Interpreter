#include "environment.hpp"

#include <cassert>
#include <cmath>

#include "interpreter_semantic_error.hpp"

Expression enot(const std::vector<Atom>& args) {
	if(args.size()!=1){
		return Expression();
	}
	if (args[0].type != BooleanType) {
		return Expression();
	}
	Expression notoperation;
	if (args[0].value.bool_value ) {
		notoperation.head.type = BooleanType;
		notoperation.head.value.bool_value = false;
	}
	else if (!args[0].value.bool_value ) {
		notoperation.head.type = BooleanType;
		notoperation.head.value.bool_value = true;
	}
	return notoperation;
}

Expression eand (const std::vector<Atom>& args) {
	if (args.empty()) {
		return Expression();
	}
	Expression andoperation;
	andoperation.head.type = BooleanType;
	andoperation.head.value.bool_value = args[0].value.bool_value;
	for (unsigned int i = 0; i < args.size(); i++) {
		if (args[i].type != BooleanType) {
			return Expression();
		}
		if (!args[i].value.bool_value ) {
			andoperation.head.value.bool_value = args[i].value.bool_value;
		}
	}
	return andoperation;
}

Expression eor (const std::vector<Atom>&args) {
	if (args.empty()) {
		return Expression();
	}
	Expression oroperation;
	oroperation.head.type = BooleanType;
	oroperation.head.value.bool_value = false;
	for (unsigned int i = 0; i < args.size(); i++) {
		if (args[i].type != BooleanType) {
			return Expression();
		}
		if (args[i].value.bool_value) {
			oroperation.head.value.bool_value = true;
		}
	}
	return oroperation;
}

Expression smaller(const std::vector<Atom>& args) {
	if (args.size() != 2) {
		return Expression();
	}
	if (args[0].type != NumberType) {
		return Expression();
	}
	if (args[1].type != NumberType) {
		return Expression();
	}
	Expression smalleroperator;
	if (args[0].value.num_value < args[1].value.num_value) {
		smalleroperator.head.type = BooleanType;
		smalleroperator.head.value.bool_value = true;
	}
	else {
		smalleroperator.head.type = BooleanType;
		smalleroperator.head.value.bool_value = false;
	}
	return smalleroperator;
}

Expression smallerandequal(const std::vector<Atom>& args) {
	if (args.size() != 2) {
		return Expression();
	}
	if (args[0].type != NumberType) {
		return Expression();
	}
	if (args[1].type != NumberType) {
		return Expression();
	}
	Expression smallerandequaloperator;
	if (args[0].value.num_value <= args[1].value.num_value) {
		smallerandequaloperator.head.type = BooleanType;
		smallerandequaloperator.head.value.bool_value = true;
	}
	else {
		smallerandequaloperator.head.type = BooleanType;
		smallerandequaloperator.head.value.bool_value = false;
	}
	return smallerandequaloperator;
}

Expression grater(const std::vector<Atom>& args) {
	if (args.size() != 2) {
		return Expression();
	}
	if (args[0].type != NumberType) {
		return Expression();
	}
	if (args[1].type != NumberType) {
		return Expression();
	}
	Expression grateroperator;
	if (args[0].value.num_value > args[1].value.num_value) {
		grateroperator.head.type = BooleanType;
		grateroperator.head.value.bool_value = true;
	}
	else {
		grateroperator.head.type = BooleanType;
		grateroperator.head.value.bool_value = false;
	}
	return grateroperator;
}

Expression graterandequal(const std::vector<Atom>& args) {
	if (args.size() != 2) {
		return Expression();
	}
	if (args[0].type != NumberType) {
		return Expression();
	}
	if (args[1].type != NumberType) {
		return Expression();
	}
	Expression graterandequaloperator;
	if (args[0].value.num_value >= args[1].value.num_value) {
		graterandequaloperator.head.type = BooleanType;
		graterandequaloperator.head.value.bool_value = true;
	}
	else {
		graterandequaloperator.head.type = BooleanType;
		graterandequaloperator.head.value.bool_value = false;
	}
	return graterandequaloperator;
}

Expression equal(const std::vector<Atom>& args) {
	if (args.size() != 2) {
		return Expression();
	}
	if (args[0].type != NumberType) {
		return Expression();
	}
	if (args[1].type != NumberType) {
		return Expression();
	}
	Expression equaloperator;
	if (args[0].value.num_value == args[1].value.num_value) {
		equaloperator.head.type = BooleanType;
		equaloperator.head.value.bool_value = true;
	}
	else {
		equaloperator.head.type = BooleanType;
		equaloperator.head.value.bool_value = false;
	}
	return equaloperator;
}

Expression plus(const std::vector<Atom>& args) {
	if (args.empty()) {
		return Expression();
	}
	Expression plusoperator;
	plusoperator.head.type = NumberType;
	plusoperator.head.value.num_value = 0;
	for(unsigned int i=0;i<args.size();i++){
		if (args[i].type != NumberType) {
			return Expression();
		}
		plusoperator.head.value.num_value = plusoperator.head.value.num_value+args[i].value.num_value;
	}
	return plusoperator;
}

Expression minusandnegative(const std::vector<Atom>& args) {
	Expression minusoperator;
	if (args[0].type != NumberType) {
		return Expression();
	}
	if (args.size() == 2 || args.size() == 1) {
		if (args.size() == 2) {//minus
			if (args[0].type != NumberType) {
				return Expression();
			}
			if (args[1].type != NumberType) {
				return Expression();
			}
			minusoperator.head.type = NumberType;
			minusoperator.head.value.num_value = args[0].value.num_value - args[1].value.num_value;
		}
		else if (args.size() == 1) {//negative
			minusoperator.head.type = NumberType;
			minusoperator.head.value.num_value = 0 - args[0].value.num_value;
		}
	}
	else {
		return Expression();
	}
	return minusoperator;
}

Expression multi(const std::vector<Atom>& args) {
	if (args.empty()) {
		return Expression();
	}
	Expression multioperator;
	multioperator.head.type = NumberType;
	multioperator.head.value.num_value = 1;
	for (unsigned int i = 0; i < args.size(); i++ ) {
		if (args[i].type != NumberType) {
			return Expression();
		}
		multioperator.head.value.num_value = multioperator.head.value.num_value * args[i].value.num_value;
	}
	return multioperator;
}

Expression divide(const std::vector<Atom>& args) {
	if (args.size() != 2) {
		return Expression();
	}
	if (args[0].type != NumberType) {
		return Expression();
	}
	if (args[1].type != NumberType) {
		return Expression();
	}
	Expression divideoperator;
	divideoperator.head.type = NumberType;
	divideoperator.head.value.num_value = args[0].value.num_value / args[1].value.num_value;
	return divideoperator;
}

Expression log10method(const std::vector<Atom>& args) {
	if (args.size() != 1) {
		return Expression();
	}
	if (args[0].type != NumberType) {
		return Expression();
	}
	if (args[0].value.num_value < 0) {
		return Expression();
	}
	Expression log10operator;
	log10operator.head.type = NumberType;
	auto b = args[0];
	log10operator.head.value.num_value = log10(b.value.num_value);
	return log10operator;
}

Expression power(const std::vector<Atom>& args) {
	if (args.size() != 2) {
		return Expression();
	}
	if (args[0].type != NumberType) {
		return Expression();
	}
	if (args[1].type != NumberType) {
		return Expression();
	}
	Expression powoperation;
	powoperation.head.type = NumberType;
	powoperation.head.value.num_value = pow(args[0].value.num_value, args[1].value.num_value);
	return powoperation;
}

Expression IF(const std::vector<Atom>& args) {
	Expression ifoperation;
	if (args[0].type != BooleanType) {
		return Expression();
	}
	if (args[0].value.bool_value) {
		if (args[1].type == NumberType) {
			ifoperation.head.type = NumberType;
			ifoperation.head.value.num_value = args[1].value.num_value;
		}
		else if(args[1].type == BooleanType){
			ifoperation.head.type = BooleanType;
			ifoperation.head.value.bool_value = args[1].value.bool_value;
		}
	}
	else if(!args[0].value.bool_value) {
		if (args[2].type == NumberType) {
			ifoperation.head.type = NumberType;
			ifoperation.head.value.num_value = args[2].value.num_value;
		}
		else if (args[2].type == BooleanType) {
			ifoperation.head.type = BooleanType;
			ifoperation.head.value.bool_value = args[2].value.bool_value;
		}
	}
	return ifoperation;
}

Expression Begin(const std::vector<Atom>& args) {
	if (args.empty()) {
		return Expression();
	}
	Expression begoperation;
	if (args[args.size() - 1].type == NumberType) {
		begoperation.head.type = NumberType;
		begoperation.head.value.num_value = args[args.size() - 1].value.num_value;
	}
	else {
		begoperation.head.type = BooleanType;
		begoperation.head.value.bool_value = args[args.size() - 1].value.bool_value;
	}
	return 	begoperation;
}

Expression Define(const std::vector<Atom>& args) {
	if (args.size() != 2) {
		return Expression();
	}
	if (isprocedure1(args[0].value.sym_value)) {
		return Expression();
	}
	Expression defineoperation;
	if (args[1].type == NumberType) {
		defineoperation.head.type = NumberType;
		defineoperation.head.value.num_value = args[1].value.num_value;
	}
	else {
		defineoperation.head.type = BooleanType;
		defineoperation.head.value.bool_value = args[1].value.bool_value;
	}
	return 	defineoperation;
}

Expression POINT1(const std::vector<Atom>& args) {
	if (args.size() != 2) {
		return Expression();
	}
	Expression pointoutput;
	if (args[0].type != NumberType) {
		return Expression();
	}
	if (args[1].type != NumberType) {
		return Expression();
	}
	pointoutput.head.type = PointType;
	pointoutput.head.value.point_value.x = args[0].value.num_value;
	pointoutput.head.value.point_value.y = args[1].value.num_value;
	return pointoutput;
}

Expression SIN(const std::vector<Atom>& args) {
	if (args.size() != 1) {
		return Expression();
	}
	if (args[0].type != NumberType) {
		return Expression();
	}
	Expression sinoperation;
	sinoperation.head.type = NumberType;
	int x = int(sin(args[0].value.num_value) * 1000);
	x = x / 1000;
	double y = x;
	sinoperation.head.value.num_value = y;
	return sinoperation;
}

Expression COS(const std::vector<Atom>& args) {
	if (args.size() != 1) {
		return Expression();
	}
	if (args[0].type != NumberType) {
		return Expression();
	}
	Expression cosoperation;
	cosoperation.head.type = NumberType;
	int x = int(cos(args[0].value.num_value) * 1000);
	x = x / 1000;
	double y = x;
	cosoperation.head.value.num_value = y;
	return cosoperation;
}

Expression ARCTAN(const std::vector<Atom>& args) {
	if (args.size() != 2) {
		return Expression();
	}
	if (args[0].type != NumberType) {
		return Expression();
	}
	if (args[1].type != NumberType) {
		return Expression();
	}
	Expression arctanoperation;
	arctanoperation.head.type = NumberType;
	arctanoperation.head.value.num_value = atan2(args[0].value.num_value, args[1].value.num_value);
	return arctanoperation;
}

Expression LINE(const std::vector<Atom>& args) {
	if (args.size() != 2) {
		return Expression();
	}
	if (args[0].type != PointType) {
		return Expression();
	}
	if (args[1].type != PointType) {
		return Expression();
	}
	Expression Lineoperation;
	Lineoperation.head.type = LineType;
	Lineoperation.head.value.line_value.first.x = args[0].value.point_value.x;
	Lineoperation.head.value.line_value.first.y = args[0].value.point_value.y;
	Lineoperation.head.value.line_value.second.x = args[1].value.point_value.x;
	Lineoperation.head.value.line_value.second.y = args[1].value.point_value.y;
	return Lineoperation;
}

Expression DRAW(const std::vector<Atom>& args) {
	for (unsigned int i = 0; i < args.size(); i++) {
		if (args[i].type != PointType) {
			if (args[i].type != LineType) {
				if (args[i].type != ArcType) {
					throw InterpreterSemanticError("Error: input is invalid");
				}
			}
		}
	}
	return Expression();
}

Expression ARC(const std::vector<Atom>& args) {
	if (args.size() != 3) {
		return Expression();
	}
	if (args[0].type != PointType) {
		return Expression();
	}
	if (args[1].type != PointType) {
		return Expression();
	}
	if (args[2].type != NumberType) {
		return Expression();
	}
	Expression Arcoperation;
	Arcoperation.head.type = ArcType;
	Arcoperation.head.value.arc_value.center.x = args[0].value.point_value.x;
	Arcoperation.head.value.arc_value.center.y = args[0].value.point_value.y;
	Arcoperation.head.value.arc_value.start.x= args[1].value.point_value.x;
	Arcoperation.head.value.arc_value.start.y = args[1].value.point_value.y;
	Arcoperation.head.value.arc_value.span = args[2].value.num_value;
	return Arcoperation;
}

bool isprocedure1(Symbol symbol) {
	bool a = false;
	if (symbol=="draw"||symbol=="point"||symbol=="line"||symbol=="arc"||symbol=="sin"||symbol=="cos"||symbol=="arctan"||symbol == "not" || symbol == "and" || symbol == "or" || symbol == "<" || symbol == "<=" || symbol == ">" || symbol == ">=" || symbol == "=" || symbol == "+" || symbol == "-" || symbol == "*" || symbol == "/" || symbol == "log10" || symbol == "pi" || symbol == "pow" || symbol == "begin" || symbol == "define" || symbol == "if") {
		a=true;
	}
	return a;
}

bool Environment::isprocedure(Symbol symbol) {
	bool a = false;
	if (symbol == "draw" || symbol == "point" || symbol == "line" || symbol == "arc" || symbol == "sin" || symbol == "cos" || symbol == "arctan" || symbol == "not" || symbol == "and" || symbol == "or" || symbol == "<" || symbol == "<=" || symbol == ">" || symbol == ">=" || symbol == "=" || symbol == "+" || symbol == "-" || symbol == "*" || symbol == "/" || symbol == "log10" || symbol == "pi" || symbol == "pow" || symbol == "begin" || symbol == "define" || symbol == "if") {
		a=true;
	}
	return a;
}
Procedure Environment::mapping(Symbol symbol) {
	return envmap[symbol].proc;
}

Expression Environment::getexpression(Symbol symbol) {
	Expression pioperation;
	if (symbol == "pi") {
		pioperation.head.type = NumberType;
		pioperation.head.value.num_value = atan2(0, -1);
	}
	return pioperation;
}

Environment::Environment() {
	envmap["not"];
	envmap["not"].proc =  enot;
	envmap["and"];
	envmap["and"].proc =  eand;
	envmap["or"];
	envmap["or"].proc = eor;
	envmap["<"];
	envmap["<"].proc = smaller;
	envmap["<="];
	envmap["<="].proc = smallerandequal;
	envmap[">"];
	envmap[">"].proc = grater;
	envmap[">="];
	envmap[">="].proc = graterandequal;
	envmap["="];
	envmap["="].proc = equal;
	envmap["+"];
	envmap["+"].proc = plus;
	envmap["-"];
	envmap["-"].proc = minusandnegative;
	envmap["*"];
	envmap["*"].proc = multi;
	envmap["/"];
	envmap["/"].proc = divide;
	envmap["log10"];
	envmap["log10"].proc = log10method;
	envmap["pow"];
	envmap["pow"].proc = power;
	envmap["if"];
	envmap["if"].proc = IF;
	envmap["begin"];
	envmap["begin"].proc = Begin;
	envmap["define"];
	envmap["define"].proc = Define;
	envmap["point"];
	envmap["point"].proc = POINT1;
	envmap["line"];
	envmap["line"].proc = LINE;
	envmap["arc"];
	envmap["arc"].proc = ARC;
	envmap["sin"];
	envmap["sin"].proc = SIN;
	envmap["cos"];
	envmap["cos"].proc = COS;
	envmap["arctan"];
	envmap["arctan"].proc = ARCTAN;
	envmap["draw"];
	envmap["draw"].proc = DRAW;
}



