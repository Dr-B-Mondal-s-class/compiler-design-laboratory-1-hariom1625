%{

// Write a program using Lex and YACC which accepts string that starts and ends with 0 or 1.

#include<stdio.h>
#include "y.tab.h"

%}

%%
[a-zA-Z0-9(){}]+ {yylval.c = yytext; return STR;}
[\n] {;}
.* {return yytext[0];}

%%

int yywrap(){

return 0;
}
