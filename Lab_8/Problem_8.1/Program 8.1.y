%{

// Write a program using Lex and YACC to respond to the entered Input.

#include <stdio.h>
int yylex(void);
int yyerror(const char *c);

%}

%token Hi HieHie

%%

program:

		hi hiehie;

hi:

	Hi  {printf("Hello World\n");};

hiehie:

	HieHie {printf("Hello Hello World\n");};
