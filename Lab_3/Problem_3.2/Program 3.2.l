%{
// Write a lex program to count the total number of characters in the input.


int character_count=0;
int whitespace_count=0;
%}

Vowel [A|E|I|O|U|a|e|i|o|u]
Consonants [A-Za-z]
Digit [0-9]
Whitespace ([ ])+

%%
{Consonants} {character_count++;}
{Whitespace} {whitespace_count++;}
%%

int main(){
printf("Enter the string: \n");
yylex();
printf("The total number of Characters in entered string is: %d\n",character_count);
printf("The total number of Whitespace in entered string is: %d\n",whitespace_count);
return 0;
}

int yywrap(void){
return 1;
}
