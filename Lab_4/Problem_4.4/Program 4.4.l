%{
// Write a lex program to check whether the input is an Integer or a Floating-point number.

%}

Integer [+]?[-]?[0-9]+
Float [+]?[-]?[0-9]*?[.][0-9]+
%%
{Integer} {printf("Integer\n");};
{Float} {printf("Floating-point Number\n");};
.* {printf("Invalid Number\n",yytext);};

%%
int main(){


yylex();

return 0;
}
int yywrap(void){
return 1;
}
