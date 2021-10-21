%{
// Write a lex program to check if the given input contains only Alphabets.
%}

Alphabet [A-Za-z]

%%
{Alphabet}+ {printf("Only Alphabets present\n");};

.*{printf("Character other than Alphabets is also present\n");};
%%

int main(){
yylex();
return 0;
}

int yywrap(void){
return 1;
}
