%{

// Write a program using Lex and YACC which accepts string that starts and ends with 0 or 1.

#include <stdio.h>
#include <string.h>
extern int yylex(void);
void yyerror( char *c);
int f=0;

%}

%union{
char *c;
};

%token <c> STR
%type <c> E

%%

S:E{

f=0;
int k=strlen($1);
if(($1[0]=='0' || $1[0]=='1') && ($1[k-1]=='0' || $1[k-1]=='1'))
f=1;


if(f==1)
printf("%s is a valid string\n", $1);
else
printf("%s is an invalid string. \n", $1);
};

E:STR{

$$= $1;
};

%%

void yyerror(char *c){

fprintf(stderr,"%s\n",c);

}
int main(){

yyparse();
return 0;

}
