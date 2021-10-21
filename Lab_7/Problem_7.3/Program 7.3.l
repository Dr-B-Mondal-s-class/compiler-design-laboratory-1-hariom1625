%{
// Write a lex program to take input from a file and remove multiple whitespace, tab and newline and write output in a separate file.

#include <stdio.h>
char InputFile[100],OutputFile[100];

%}

%%
([ ])+ {fprintf(yyout," ");};
([\n])+ {fprintf(yyout,"\n");};
([\t])+ {fprintf(yyout,"\t");};
. {fprintf(yyout,"%s",yytext);};
%%

int main(int argc, char *argv[]){

{printf("Enter Input file name: ");};
scanf("%s",InputFile);
{printf("Enter Output file name: ");};
scanf("%s",OutputFile);

yyin=fopen(InputFile,"r");
yyout = fopen(OutputFile, "w");

yylex();
fclose(yyin);
fclose(yyout);

return 0;
}
int yywrap(void){
return 1;
}
