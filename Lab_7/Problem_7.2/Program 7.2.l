%{
// Write a lex program to count the number of lexemes in the Input file.

#include <stdio.h>
char file[100];
int keyword=0,id=0,op=0,sep=0,in=0,fl=0;

%}

Keyword int|double|float|long|char|if|else|switch|case|break|do|while|for|struct|continue|void|return
Identifier [a-zA-z_][a-zA-z0-9_]+
Operator "<"|">"|"<="|">="|"=="|"!="|"+"|"-"|"*"|"/"|"%"|"++"|"--"|"&&"|"||"|"!"|"&"|"~"|"^"|"|"|"<<"|">>"
Integer [+]?[-]?[0-9]+
Float [+]?[-]?[0-9]*?[.][0-9]+
Separators "{"|"}"|"("|")"|";"

%%
{Keyword} {keyword++;};
{Identifier} {id++;};
{Operator} {op++;};
{Integer} {in++;};
{Float} {fl++;};
{Separators} {sep++;};
\n {return 0;}
. ;
%%

int main(int argc, char *argv[]){

{printf("Enter Input file name: ");};
scanf("%s",file);

yyin=fopen(file,"r");

yylex();
fclose(yyin);
{printf("The total number of Keywords entered are: %d\n",keyword);};
{printf("The total number of Identifiers entered are: %d\n",id);};
{printf("The total number of Integers entered are: %d\n",in);};
{printf("The total number of Floating-point numbers entered are: %d\n",fl);};
{printf("The total number of Operators entered are: %d\n",op);};
{printf("The total number of Separators entered are: %d\n",sep);};

return 0;
}
int yywrap(void){
return 1;
}
