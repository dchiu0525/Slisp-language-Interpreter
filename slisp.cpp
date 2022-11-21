#include <cstdlib>
#include "interpreter.hpp"
#include "expression.hpp"
#include "tokenize.hpp"
#include <string>
#include <sstream>
#include <fstream>
#include <iostream>


void outputresult(Expression result);
int main(int argc, char **argv)
{	std::string first = argv[0];
	if (first == "./slisp") {
		if (argc > 2) {
			std::string second = argv[1];
			if (second == "-e") {
				std::string input;
				for (auto i = 2; i < argc; i++) {
					input += argv[i];}
				Interpreter interp;
				std::istringstream in(input);
				if (interp.parse(in)) {
					Expression result;
					try {
						result = interp.eval();}
					catch (std::runtime_error) {
						std::cout << "Error: invalid input of eval." << std::endl;
						return EXIT_FAILURE;}
					outputresult(result);}
				else {
					std::cout << "Error: invalid input of parse." << std::endl;
					return EXIT_FAILURE;}}}
		else if (argc == 2) {
			std::string filename = argv[1];
			std::ifstream file(filename);
			if (!file.good() ) {
				std::cout << "Error: File can not found or open." << std::endl;
				return EXIT_FAILURE;}
			Interpreter interp;
			if (interp.parse(file)) {
				Expression result;
				try {
					result = interp.eval();}
				catch (std::runtime_error) {
					std::cout << "Error: invalid input of eval." << std::endl;
					return EXIT_FAILURE;}
				outputresult(result);}
			else {
				std::cout << "Error: invalid input of parse." << std::endl;
				return EXIT_FAILURE;}}
		else if (argc == 1) {
			Interpreter interp;
			while (true) {
				std::cout << "slisp>";
				std::string input;
				getline(std::cin, input);
				std::istringstream in(input);
				if (interp.parse(in)) {
					Expression result;
					try {
						result = interp.eval();}
					catch (std::runtime_error) {
						std::cout << "Error: invalid input in the operation." << std::endl;}
					outputresult(result);}
				else {
					std::cout << "Error: invalid input." << std::endl;}}}
		else {
			std::cout << "Error: invalid input." << std::endl;
			return EXIT_FAILURE;			}}
  return EXIT_SUCCESS;
}


void outputresult(Expression result) {
	if (result.head.type == BooleanType) {
		if (result.head.value.bool_value) {
			std::cout << "(True)" << std::endl;
		}
		else {
			std::cout << "(False)" << std::endl;
		}
	}
	else if (result.head.type == NumberType) {
		std::cout << "(" << result.head.value.num_value << ")" << std::endl;
	}
	else if (result.head.type == SymbolType) {
		std::cout << "(" << result.head.value.sym_value << ")" << std::endl;
	}
}