%{
// Write a lex program to check whether the input string is a Valid Indentifier in C or not.
%}

Keyword int|double|float|long|char|if|else|switch|case|break|do|while|for|struct|continue|void|return
Identifier [a-zA-z_][a-zA-z0-9_]*

%%
{Keyword} {printf("%s is an Invalid Identifier in C\n",yytext);};
{Identifier} {printf("%s is a Valid Identifier in C\n",yytext);};
.* {printf("%s is an Invalid Identifier in C\n",yytext);};
%%
int main(){
yylex();
return 0;
}
int yywrap(void){
return 0;
}
