%{
// Write a lex program to count the total number of lexemes.
#include <stdio.h>
int c=0;
%}
Keyword int|double|float|long|char|if|else|switch|case|break|do|while|for|struct|continue|void|return
Identifier [a-zA-z_][a-zA-z0-9_]+
Operator "<"|">"|"<="|">="|"=="|"!="|"+"|"-"|"*"|"/"|"%"|"++"|"--"|"&&"|"||"|"!"|"&"|"~"|"^"|"|"|"<<"|">>"
Integer [+]?[-]?[0-9]+
Float [+]?[-]?[0-9]*?[.][0-9]+

%%
{Keyword} {c++;};
{Identifier} {c++;};
{Operator} {c++;};
{Integer} {c++;};
{Float} {c++;};
%%
int main(){
yylex();

{printf("The total number of lexemes entered are: %d",c);};

return 0;

}
int yywrap(void){
return 1;
}
