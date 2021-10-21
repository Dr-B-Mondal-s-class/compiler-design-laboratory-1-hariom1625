%{
// Write a lex program to check whether the input is a Valid Operator in C or not.

%}

Relational "<"|">"|"<="|">="|"=="|"!="
Arithmetic "+"|"-"|"*"|"/"|"%"|"++"|"--"
Logical "&&"|"||"|"!"
Bitwise "&"|"~"|"^"|"|"|"<<"|">>"
%%
{Relational} {printf("%s is a Relational Operator in C\n",yytext);};
{Arithmetic} {printf("%s is an Arithmetic Operator in C\n",yytext);};
{Logical} {printf("%s is a Logical Operator in C\n",yytext);};
{Bitwise} {printf("%s is a Bitwise Operator in C\n",yytext);};


.* {printf("%s is an Invalid Operator in C\n",yytext);};
%%
int main(){
yylex();
return 0;
}
int yywrap(void){
return 0;
}
