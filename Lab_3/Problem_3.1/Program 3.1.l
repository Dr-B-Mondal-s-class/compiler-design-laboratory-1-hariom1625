%{
// Write a lex program to check if the given input is a consonant or a vowel.
%}

Vowel [A|E|I|O|U|a|e|i|o|u]
Consonants [A-Za-z]
digit [0-9]
whitespace ([ ])+

%%
{Vowel} {printf("The entered character is a Vowel\n");};
{Consonants} {printf("The entered character is a Consonant\n");};
%%

int main(){
yylex();
}

int yywrap(void){
return 0;
}
