%{
// Write a lex program to check if the given input is a Digit or an Alphabet.
%}

Digit [0-9]
Alphabet [A-Za-z]

%%
{Digit} {printf("Digit");};
{Alphabet} {printf("Alphabet");};
%%

int main(){
yylex();
return 0;
}

int yywrap(void){
return 1;
}
