#include "interpreter.hpp"

// system includes
#include <stack>
#include <stdexcept>
#include <iostream>

// module includes
#include "tokenize.hpp"
#include "expression.hpp"
#include "environment.hpp"
#include "interpreter_semantic_error.hpp"

Expression setAST(TokenSequenceType tokens);


bool Interpreter::parse(std::istream& expression) noexcept {
	// TODO: implement this function
	// return true if input is valid. otherwise, return false.
	  //everthing after first word will be tail.
	TokenSequenceType tokens = tokenize(expression);
	if (!tokens.empty()) {
		if (tokens[0] != "(") {
		//	std::cout << "Error: invalid input of (." << std::endl;
			return false;
		}
		if (tokens.size() < 3) {
		//	std::cout << "Error: invalid input of size." << std::endl;
			return false;
		}
		auto open = 0;
		for (unsigned int i = 0; i < tokens.size(); i++) {
			if (tokens[i] == "(") {
				open++;
			}
			else if (tokens[i] == ")") {
				open--;
				if (open == 0) {
					if (i < tokens.size() - 1) {
		//				std::cout << "Error: invalid input of over." << std::endl;
						return false;
					}
				}
			}
			else {
				Atom atom;
				bool check = token_to_atom(tokens[i], atom);
				if (!check) {
		//			std::cout << "Error: invalid input ." << std::endl;
					return false;
				}
			}

		}
		if (open != 0) {
		//	std::cout << "Error: invalid input of not end." << std::endl;
			return false;
		}
		ast = setAST(tokens);
		return true;
	}
	//	std::cout << "Error: invalid input of no input." << std::endl;
		return false;
};

Expression Interpreter::eval(){
  // TODO: implement this function
	bool a=cal(this->ast);
	if (a) {
		return this->ast;
	}

		return Expression();
	
}






Expression setAST(TokenSequenceType tokens) {
	tokens.pop_front();
	tokens.pop_back();
	Expression AST;
	auto opencount = 0;
	Atom atom;
	token_to_atom(tokens[0], atom);
	AST.head = atom;
	for (unsigned int i=1; i < tokens.size(); i++) {
		if (tokens[i] != "(") {
			Expression case1;
			token_to_atom(tokens[i], atom);
			case1.head = atom;
			AST.tail.push_back(case1);
		}
		else {
			auto update = 0;
			TokenSequenceType newstring;
			for (unsigned int j = i; j < tokens.size(); j++) {
				if (tokens[j] == ")") {
					opencount--;
					newstring.push_back(tokens[j]);
				}
				else if (tokens[j] == "(") {
					opencount++;
					newstring.push_back(tokens[j]);
				}
				else {
					newstring.push_back(tokens[j]);
				}
				if (opencount == 0) {
					update = j;
					break;
				}
			}
			AST.tail.push_back(setAST(newstring));
			i = update;
		}

	}
	return AST;


}

bool Interpreter::cal(Expression& AST) {
	if (AST.tail.empty()) {
		if (AST.head.type == SymbolType) {
			if (AST.head.value.sym_value == "pi") {
				Expression pi = env.getexpression(AST.head.value.sym_value);
				AST = pi;
			}
			else {
				throw InterpreterSemanticError("Error:: input is invalid");}}
		return true;}
	for (unsigned int i=0; i < AST.tail.size(); i++) {
		if (!AST.tail[i].tail.empty()) {
			cal(AST.tail[i]);} }
	if (!env.isprocedure(AST.head.value.sym_value)) {
			if (AST.head.type != NumberType) {
				if (AST.head.type != BooleanType) {
					throw InterpreterSemanticError("Error:: input is invalid");}}}
	Procedure A = env.mapping(AST.head.value.sym_value);
	std::vector<Atom> tailvalue;
	if (AST.head.value.sym_value == "define") {
		if (AST.tail[0].head.value.sym_value=="pi") {
			throw InterpreterSemanticError("Error:: input is invalid");}
		std::pair<std::string, Atom> defineinput;
		bool havepush = false;
		for (unsigned int p = 0; p < definestore.size(); p++) {
			if (definestore[p].first == AST.tail[1].head.value.sym_value) {
				defineinput.first = AST.tail[0].head.value.sym_value;
				defineinput.second = definestore[p].second;
				definestore.push_back(defineinput);
				havepush = true;}}
		if (!havepush ) {
			defineinput.first = AST.tail[0].head.value.sym_value;
			defineinput.second = AST.tail[1].head;
			definestore.push_back(defineinput);}}
		for (unsigned int j = 0; j < AST.tail.size(); j++) {
			if (AST.tail[j].head.type == SymbolType) {
				if (AST.tail[j].head.value.sym_value == "pi") {
					Expression pi = env.getexpression(AST.tail[j].head.value.sym_value);
					tailvalue.push_back(pi.head);
				}
				else {
					for (unsigned int k = 0; k < definestore.size(); k++) {
						if (definestore[k].first == AST.tail[j].head.value.sym_value) {
								tailvalue.push_back(definestore[k].second);}}}}
			else {
				tailvalue.push_back(AST.tail[j].head);}}
	Expression newhead = A(tailvalue);
	output(newhead, AST, tailvalue);
	return true;
}

std::vector<Atom> Interpreter::getwholegraphicsitems() {
	return graphics;

}

void  Interpreter::output(Expression newhead, Expression& AST, std::vector<Atom> tailvalue) {
	if (newhead.head.type != NoneType) {
		AST.tail.clear();
		AST.head = newhead.head;

	}
	else if (AST.head.value.sym_value == "draw") {
		for (unsigned int i = 0; i < tailvalue.size(); i++) {
			graphics.push_back(tailvalue[i]);
		}
		AST.tail.clear();
		AST.head = newhead.head;
	}
	else if (AST.head.value.sym_value == "begin") {
		AST.tail.clear();
		AST.head = newhead.head;
	}
	else {
		//	std::cout << AST.head.value.sym_value<< std::endl;
		//	std::cout << "Error: invalid tail." << std::endl;
		throw InterpreterSemanticError("Error:: input is invalid");
	}
}

