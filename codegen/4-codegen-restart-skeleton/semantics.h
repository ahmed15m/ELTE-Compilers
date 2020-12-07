#ifndef SEMANTICS_H
#define SEMANTICS_H

#include<iostream>
#include<string>
#include<map>
#include<sstream>

enum type { integer, boolean, time_type };

struct expression_descriptor {
	type expr_type;
	std::string expr_code;
	expression_descriptor(type t, std::string s) {
		expr_type = t;
		expr_code = s;
	}
};

struct var_data {
	bool is_const = false;
	bool is_assigned = false;
	int decl_row;
	type decl_type;
    std::string label;
	var_data(){}
	var_data(int i, type t, std::string l)
	{
		decl_row = i;
		decl_type = t;
        label = l;
	}
	var_data(int i, type t, std::string l, bool is_constt)
	{
		decl_row = i;
		decl_type = t;
        label = l;
		is_const = is_constt;
	}
};

#endif
