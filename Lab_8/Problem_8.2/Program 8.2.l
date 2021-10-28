% {
// Write a program using Lex and YACC to check whether a string is Palindrome or Not.

#include<stdio.h>
#include "y.tab.h"

%}

%%
[a - zA - Z0 - 9() {}] + {yylval.c = yytext; return STR;}
[\n] {;}
.* {return yytext[0];}

%%

int yywrap() {

	return 0;
}
