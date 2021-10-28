%{

// Write a program using Lex and YACC to check whether a string is Palindrome or Not.

#include <stdio.h>
#include <string.h>

	extern int yylex(void);
	void yyerror( char *c);
	int f = 0;

%}

% union {
	char *c;
};

% token <c> STR
% type <c> E

%%

S: E{

	f = 0;
	int k = strlen($1);

	for (int i = 0; i < k / 2; i++) {
		if ($1[i] != $1[k - i - 1]) {
			f = 1;
			break;
		}
	}

	if (f == 0)
		printf("%s is a Palindrome\n", $1);
	else
		printf("%s is not a Palindrome\n", $1);
};



E: STR{

	$$ = $1;
};

%%

void yyerror(char *c) {

	fprintf(stderr, "%s\n", c);

}
int main() {

	yyparse();
	return 0;

}
