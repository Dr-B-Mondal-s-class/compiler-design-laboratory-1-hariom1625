%{
// Write a lex program to count the number of characters, whitespaces, tabs and lines in the Input file.

#include <stdio.h>
int nline=1, nwhitespace=0,ntab=0,nchar=0;
char file[100];
%}

whitespace [ ]

%%
{whitespace} {nwhitespace++;};
\n {nline++;};
\t {ntab++;};
. {nchar++;};
%%

int main(int argc, char *argv[]){

{printf("Enter Input file name: ");};
scanf("%s",file);

yyin=fopen(file,"r");

yylex();
fclose(yyin);
{printf("The number of Characters in the input is: %d\n",nchar);};
{printf("The number of Whitespaces in the input string is: %d\n",nwhitespace);};
{printf("The number of Tabs in the input string is: %d\n",ntab);};
{printf("The number of Lines in the input string is: %d\n", nline);};

return 0;
}
int yywrap(void){
return 1;
}
