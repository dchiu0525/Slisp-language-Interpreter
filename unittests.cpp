#define CATCH_CONFIG_MAIN
#define CATCH_CONFIG_COLOUR_NONE
#include "catch.hpp"
#include <string>
#include <sstream>
#include <fstream>
#include <iostream>

#include "tokenize.hpp"
#include "interpreter_semantic_error.hpp"
#include "interpreter.hpp"
#include "expression.hpp"

#include "environment.hpp"



// TODO: add your unit tests here

static Expression run(const std::string& program) {

	std::istringstream iss(program);

	Interpreter interp;

	bool ok = interp.parse(iss);
	if (!ok) {
		std::cerr << "[GRADER] Failed to parse: " << program << std::endl;
	}
	REQUIRE(ok == true);

	Expression result;
	REQUIRE_NOTHROW(result = interp.eval());

	return result;
}
TEST_CASE("Test complex Tokenizer with expected input", "[tokenize]") {

	std::string program = "(begin (define a 10) (define b 20) (* pi (* a b)))";

	std::istringstream iss(program);

	TokenSequenceType tokens = tokenize(iss);

	REQUIRE(tokens.size() == 22);
	REQUIRE(tokens[0] == "(");
	REQUIRE(tokens[1] == "begin");
	REQUIRE(tokens[2] == "(");
	REQUIRE(tokens[3] == "define");
	REQUIRE(tokens[4] == "a");
	REQUIRE(tokens[5] == "10");
	REQUIRE(tokens[6] == ")");
	REQUIRE(tokens[7] == "(");
	REQUIRE(tokens[8] == "define");
	REQUIRE(tokens[9] == "b");
	REQUIRE(tokens[10] == "20");
	REQUIRE(tokens[11] == ")");
	REQUIRE(tokens[12] == "(");
	REQUIRE(tokens[13] == "*");
	REQUIRE(tokens[14] == "pi");
	REQUIRE(tokens[15] == "(");
	REQUIRE(tokens[16] == "*");
	REQUIRE(tokens[17] == "a");
	REQUIRE(tokens[18] == "b");
	REQUIRE(tokens[19] == ")");
	REQUIRE(tokens[20] == ")");
	REQUIRE(tokens[21] == ")");
}

TEST_CASE("Test error Tokenizer ", "[tokenize]") {

	std::string program = "(begin";

	std::istringstream iss(program);

	TokenSequenceType tokens = tokenize(iss);

	REQUIRE(tokens.size() == 2);
	REQUIRE(tokens[0] == "(");
	REQUIRE(tokens[1] == "begin");

}

TEST_CASE("Test only bracket with blank ", "[tokenize]") {

	std::string program = "(( ))";

	std::istringstream iss(program);

	TokenSequenceType tokens = tokenize(iss);

	REQUIRE(tokens.size() == 4);
	REQUIRE(tokens[0] == "(");
	REQUIRE(tokens[1] == "(");
	REQUIRE(tokens[2] == ")");
	REQUIRE(tokens[3] == ")");

}

TEST_CASE("Test negative ", "[tokenize]") {

	std::string program = "(-4)";

	std::istringstream iss(program);

	TokenSequenceType tokens = tokenize(iss);

	REQUIRE(tokens.size() == 3);
	REQUIRE(tokens[0] == "(");
	REQUIRE(tokens[1] == "-4");
	REQUIRE(tokens[2] == ")");

}

TEST_CASE("Test Tokenizer with if", "[tokenize]") {

	std::string program = "(if True 1 2)";

	std::istringstream iss(program);

	TokenSequenceType tokens = tokenize(iss);

	REQUIRE(tokens.size() == 6);
	REQUIRE(tokens[0] == "(");
	REQUIRE(tokens[1] == "if");
	REQUIRE(tokens[2] == "True");
	REQUIRE(tokens[3] == "1");
	REQUIRE(tokens[4] == "2");
	REQUIRE(tokens[5] == ")");
}



TEST_CASE("Test environment +", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 1;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 2;
	args.push_back(input2);
	Environment envmap;
	Procedure add = envmap.mapping("+");
	Expression output = add(args);
	REQUIRE(output == Expression(3.));
}

TEST_CASE("Test environment -", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 1;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 2;
	args.push_back(input2);
	Environment envmap;
	Procedure minus = envmap.mapping("-");
	Expression output = minus(args);
	REQUIRE(output == Expression(-1.));
}

TEST_CASE("Test environment *(two inputs)", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 1;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 2;
	args.push_back(input2);
	Environment envmap;
	Procedure mul = envmap.mapping("*");
	Expression output = mul(args);
	REQUIRE(output == Expression(2.));
}

TEST_CASE("Test environment *(three inputs)", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 1;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 2;
	args.push_back(input2);
	Atom input3;
	input3.type = NumberType;
	input3.value.num_value = 3;
	args.push_back(input3);

	Environment envmap;
	Procedure mul = envmap.mapping("*");
	Expression output = mul(args);
	REQUIRE(output == Expression(6.));
}

TEST_CASE("Test environment false equal", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 1;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 2;
	args.push_back(input2);
	Environment envmap;
	Procedure equal = envmap.mapping("=");
	Expression output = equal(args);

	REQUIRE(output == Expression(false));
}
TEST_CASE("Test environment true equal", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 2;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 2;
	args.push_back(input2);
	Environment envmap;
	Procedure equal = envmap.mapping("=");
	Expression output = equal(args);

	REQUIRE(output == Expression(true));
}


TEST_CASE("Test environment /", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 1;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 2;
	args.push_back(input2);
	Environment envmap;
	Procedure div = envmap.mapping("/");
	Expression output = div(args);
	REQUIRE(output == Expression(0.5));
}


TEST_CASE("Test environment log10", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 10;
	args.push_back(input1);
	Environment envmap;
	Procedure log = envmap.mapping("log10");
	Expression output = log(args);
	REQUIRE(output == Expression(1.));
}

TEST_CASE("Test math ", "[interpreter]") {
	REQUIRE(run("(log10 10)") == Expression(1.));
	REQUIRE(run("(log10 100)") == Expression(2.));
	REQUIRE(run("(log10 1000)") == Expression(3.));

	REQUIRE(run("(pow 10 1)") == Expression(10.));
	REQUIRE(run("(pow 10 2)") == Expression(100.));
	REQUIRE(run("(pow 10 3)") == Expression(1000.));
}


TEST_CASE("Test environment pow", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 2;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 3;
	args.push_back(input2);
	Environment envmap;
	Procedure pow = envmap.mapping("pow");
	Expression output = pow(args);
	REQUIRE(output == Expression(8.));
}

TEST_CASE("Test environment not", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = BooleanType;
	input1.value.bool_value = true;
	args.push_back(input1);

	Environment envmap;
	Procedure not1 = envmap.mapping("not");
	Expression output = not1(args);
	REQUIRE(output == Expression(false));
}

TEST_CASE("Test environment and1", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = BooleanType;
	input1.value.bool_value = true;
	args.push_back(input1);
	Atom input2;
	input2.type = BooleanType;
	input2.value.bool_value = false;
	args.push_back(input2);
	Environment envmap;
	Procedure and1 = envmap.mapping("and");
	Expression output = and1(args);
	REQUIRE(output == Expression(false));
}

TEST_CASE("Test environment and2", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = BooleanType;
	input1.value.bool_value = true;
	args.push_back(input1);
	Atom input2;
	input2.type = BooleanType;
	input2.value.bool_value = true;
	args.push_back(input2);
	Environment envmap;
	Procedure and1 = envmap.mapping("and");
	Expression output = and1(args);
	REQUIRE(output == Expression(true));
}

TEST_CASE("Test environment or1", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = BooleanType;
	input1.value.bool_value = true;
	args.push_back(input1);
	Atom input2;
	input2.type = BooleanType;
	input2.value.bool_value = true;
	args.push_back(input2);
	Environment envmap;
	Procedure or1 = envmap.mapping("or");
	Expression output = or1(args);
	REQUIRE(output == Expression(true));
}

TEST_CASE("Test environment or2", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = BooleanType;
	input1.value.bool_value = true;
	args.push_back(input1);
	Atom input2;
	input2.type = BooleanType;
	input2.value.bool_value = false;
	args.push_back(input2);
	Environment envmap;
	Procedure or1 = envmap.mapping("or");
	Expression output = or1(args);
	REQUIRE(output == Expression(true));
}

TEST_CASE("Test environment or3", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = BooleanType;
	input1.value.bool_value = false;
	args.push_back(input1);
	Atom input2;
	input2.type = BooleanType;
	input2.value.bool_value = false;
	args.push_back(input2);
	Environment envmap;
	Procedure or1 = envmap.mapping("or");
	Expression output = or1(args);
	REQUIRE(output == Expression(false));
}


TEST_CASE("Test environment < 1", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 1;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 2;
	args.push_back(input2);
	Environment envmap;
	Procedure smaller = envmap.mapping("<");
	Expression output = smaller(args);
	REQUIRE(output == Expression(true));
}

TEST_CASE("Test environment < 2", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 2;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 1;
	args.push_back(input2);
	Environment envmap;
	Procedure smaller = envmap.mapping("<");
	Expression output = smaller(args);
	REQUIRE(output == Expression(false));
}

TEST_CASE("Test environment <= 1", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 1;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 2;
	args.push_back(input2);
	Environment envmap;
	Procedure smaller = envmap.mapping("<=");
	Expression output = smaller(args);
	REQUIRE(output == Expression(true));
}

TEST_CASE("Test environment <= 2", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 2;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 1;
	args.push_back(input2);
	Environment envmap;
	Procedure smaller = envmap.mapping("<=");
	Expression output = smaller(args);
	REQUIRE(output == Expression(false));
}

TEST_CASE("Test environment <= 3", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 2;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 2;
	args.push_back(input2);
	Environment envmap;
	Procedure smaller = envmap.mapping("<=");
	Expression output = smaller(args);
	REQUIRE(output == Expression(true));
}



TEST_CASE("Test environment > 1", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 1;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 2;
	args.push_back(input2);
	Environment envmap;
	Procedure greater = envmap.mapping(">");
	Expression output = greater(args);
	REQUIRE(output == Expression(false));
}

TEST_CASE("Test environment > 2", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 2;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 1;
	args.push_back(input2);
	Environment envmap;
	Procedure greater = envmap.mapping(">");
	Expression output = greater(args);
	REQUIRE(output == Expression(true));
}

TEST_CASE("Test environment >= 1", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 1;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 2;
	args.push_back(input2);
	Environment envmap;
	Procedure greater = envmap.mapping(">=");
	Expression output = greater(args);
	REQUIRE(output == Expression(false));
}

TEST_CASE("Test environment >= 2", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 2;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 1;
	args.push_back(input2);
	Environment envmap;
	Procedure greater = envmap.mapping(">=");
	Expression output = greater(args);
	REQUIRE(output == Expression(true));
}

TEST_CASE("Test environment >= 3", "[tokenize]") {

	std::vector<Atom> args;
	Atom input1;
	input1.type = NumberType;
	input1.value.num_value = 2;
	args.push_back(input1);
	Atom input2;
	input2.type = NumberType;
	input2.value.num_value = 2;
	args.push_back(input2);
	Environment envmap;
	Procedure greater = envmap.mapping(">=");
	Expression output = greater(args);
	REQUIRE(output == Expression(true));
}

TEST_CASE("Test if", "[interpreter]") {

		std::vector<std::string> programs = { "(if true true 5)",
						 "(if false 5 true)" };
		for (auto s : programs) {
			Expression result = run(s);
			REQUIRE(result == Expression(true));
		}
}


TEST_CASE("Test environment invalid if", "[tokenize]") {

	std::vector<std::string> programs = { "(if a 1 5)"};
	for (auto s : programs) {
		Interpreter interp;

		std::istringstream iss(s);

		bool ok = interp.parse(iss);

		REQUIRE_THROWS_AS(interp.eval(), InterpreterSemanticError);
	}
}

TEST_CASE("Test environment invalid", "[tokenize]") {

	std::vector<std::string> programs = { "(not true false)",
										  "(not 1)",
										  "(and )", 
										 "(and 1 true)",
												"(or )",
											 "(or 1 true)", 
	"(< 1)","(< true 1)","(< 1 true)",
	"(<= 1)","(<= true 1)","(<= 1 true)", 
	"(> 1)","(> true 1)","(> 1 true)",
	"(>= 1)","(>= true 1)","(>= 1 true)", 
	"(= 1)","(= true 1)","(= 1 true)", 
	"(+)","(+ true 1)", 
	"(- true)","(- true 1)","(- 1 true)", 
	"(*)","(* true 1)",
	"(/ 1)","(/ true 1)","(/ 1 true)",
	"(begin )",
	"(define a 1 2)",
	"(point true 1)","(point 1 true)",
	"(arctan true 1)",
	"(arc (point -300 -300) (point -275 -300))",
	"(arc 5 (point -300 -300) (point -275 -300))",
	 "(arc (point - 300 - 300) 5 (/ pi 8))",
	"(arc (point -300 -300) (point -275 -300) (point -300 -300))",
	"(draw 1)", };
	for (auto s : programs) {
		Interpreter interp;

		std::istringstream iss(s);

		bool ok = interp.parse(iss);

		REQUIRE_THROWS_AS(interp.eval(), InterpreterSemanticError);
	}
}





TEST_CASE("Test environment invalid pow", "[tokenize]") {

	std::vector<std::string> programs = { "(pow 1)",
										  "(pow true 1)",
										  "(pow 1 true)" };
	for (auto s : programs) {
		Interpreter interp;

		std::istringstream iss(s);

		bool ok = interp.parse(iss);

		REQUIRE_THROWS_AS(interp.eval(), InterpreterSemanticError);
	}
}

TEST_CASE("Test environment invalid log10", "[tokenize]") {

	std::vector<std::string> programs = { "(log10 1 2)",
										  "(log10 true)",
										  "(log10 -5)" };
	for (auto s : programs) {
		Interpreter interp;

		std::istringstream iss(s);

		bool ok = interp.parse(iss);

		REQUIRE_THROWS_AS(interp.eval(), InterpreterSemanticError);
	}
}
TEST_CASE("Test different kinds of output on message window", "[tokenize]") {




}

TEST_CASE("Test environment invalid point", "[tokenize]") {

		std::vector<std::string> programs = { "(point 5)",
					 "(point a 1)",
					 "(point 1 a)",
		};
		for (auto s : programs) {
			Interpreter interp;

			std::istringstream iss(s);

			bool ok = interp.parse(iss);

			REQUIRE_THROWS_AS(interp.eval(), InterpreterSemanticError);
		}
}


TEST_CASE("Test environment invalid line", "[tokenize]") {


	std::vector<std::string> programs = { "(line (point 0 0))",
			 "(line (point 0 0) 5)",
			 "(line 5 (point 0 0))",
	};
	for (auto s : programs) {
		Interpreter interp;

		std::istringstream iss(s);

		bool ok = interp.parse(iss);

		REQUIRE_THROWS_AS(interp.eval(), InterpreterSemanticError);
	}
}




TEST_CASE("Test Type Inference1", "[types]") {


	Atom a;
	std::string token = "begin";
	REQUIRE(token_to_atom(token, a));
	REQUIRE(a.type == SymbolType);
	REQUIRE(a.value.sym_value == "begin");

	token = "define";
	REQUIRE(token_to_atom(token, a));
	REQUIRE(a.type == SymbolType);
	REQUIRE(a.value.sym_value == "define");

	token = "if";
	REQUIRE(token_to_atom(token, a));
	REQUIRE(a.type == SymbolType);
	REQUIRE(a.value.sym_value == "if");

	token = "-";
	REQUIRE(token_to_atom(token, a));
	REQUIRE(a.type == SymbolType);
	REQUIRE(a.value.sym_value == "-");


}


TEST_CASE("Test symbol expression", "[types]") {

	std::string program = "begin";

	std::istringstream iss(program);

	TokenSequenceType tokens = tokenize(iss);

	Atom a;
	REQUIRE(token_to_atom(tokens[0], a));
	Expression b;
	b.head = a;
	std::string c = "begin";
	REQUIRE(b == Expression(c));



}

TEST_CASE("Test num expression", "[types]") {

	std::string program = "5";

	std::istringstream iss(program);

	TokenSequenceType tokens = tokenize(iss);

	Atom a;
	REQUIRE(token_to_atom(tokens[0], a));
	Expression b;
	b.head = a;
	double c = 5;
	REQUIRE(b == Expression(c));



}

TEST_CASE("Test boolean expression", "[types]") {

	std::string program = "True";

	std::istringstream iss(program);

	TokenSequenceType tokens = tokenize(iss);

	Atom a;
	REQUIRE(token_to_atom(tokens[0], a));
	Expression b;
	b.head = a;
	bool c = true;
	REQUIRE(b == Expression(c));



}

TEST_CASE("Test invalid symbol", "[types]") {

	std::string input = "5.5.5";


	REQUIRE(issymbol(input) == false);

	input = "+5";


	REQUIRE(issymbol(input) == false);
	input = "-5";


	REQUIRE(issymbol(input) == false);
	input = "True";


	REQUIRE(issymbol(input) == false);
	input = "False";


	REQUIRE(issymbol(input) == false);

	input = "1a";


	REQUIRE(issymbol(input) == false);

	input = "a1";


	REQUIRE(issymbol(input) == true);

}

TEST_CASE("Test invalid digit", "[types]") {

	std::string input= "5.5.5";


	REQUIRE(isvalue(input) == false);

	input = "ee";

	REQUIRE(isvalue(input) == false);

	input = "+1";

	REQUIRE(isvalue(input) == true);

	input = "-1";

	REQUIRE(isvalue(input) == true);
	
	input = "abcdefg";

	REQUIRE(isvalue(input) == false);
	input = "a12";

	REQUIRE(isvalue(input) == false);
	input = "12a";

	REQUIRE(isvalue(input) == false);
}





TEST_CASE("Test eval ", "[interpreter]") {
	REQUIRE(run("(begin (define a 2) (define b 5) (+ a b))") == Expression(7.));
	REQUIRE(run("(begin (define a 2) (define b 5) (if (> a b) 3 5))") == Expression(5.));
	REQUIRE(run("(begin (define a 2) (define b 5) (if (< a b) 3 5))") == Expression(3.));
	REQUIRE(run("(begin (define a 5) (define b 5) (if (>= a b) 3 5))") == Expression(3.));
	REQUIRE(run("(begin (define a 5) (define b 5) (if (<= a b) 3 5))") == Expression(3.));
}








