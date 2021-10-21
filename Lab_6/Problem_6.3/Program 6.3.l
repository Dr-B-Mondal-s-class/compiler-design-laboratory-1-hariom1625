%{
// Write a lex program to count the number of characters in the Input file.
#include <stdio.h>
int c=0;
char file[100];
%}

%%
. {c++;};
%%
int main(int argc, char *argv[]){

{printf("Enter Input file name: ");};
scanf("%s",file);

yyin=fopen(file,"r");

yylex();
fclose(yyin);
{printf("The number of characters in the input string is: %d",c);};

return 0;
}
int yywrap(void){
return 1;
}
