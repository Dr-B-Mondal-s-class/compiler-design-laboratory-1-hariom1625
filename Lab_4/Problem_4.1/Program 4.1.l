%{
// Write a lex program to check whether the input string is a Valid Keyword in C or not.
%}

Keyword int|double|float|long|char|if|else|switch|case|break|do|while|for|struct|continue|void|return

%%
{Keyword} {printf("%s is a Valid Keyword in C\n",yytext);};
.* {printf("%s is an Invalid Keyword in C\n",yytext);};
%%
int main(){
yylex();
return 0;
}
int yywrap(void){
return 0;
}
