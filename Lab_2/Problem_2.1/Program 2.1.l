%{
// Write a lex program to check if the given input is an Alphabet.
%}

Letter [A-Za-z]

%%
{Letter} {printf("Alphabet\n");};
.* {printf("Not Alphabet\n");};
%%

int main(){
yylex();
return 0;
}

int yywrap(void){
 return 1;
}
