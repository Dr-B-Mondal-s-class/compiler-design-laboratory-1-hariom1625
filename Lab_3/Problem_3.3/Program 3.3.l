%{
// Write a lex program to count the vowel, consonant, digit and whitespace in the given input.
int vowel_count=0;
int consonant_count=0;
int digit_count=0;
int whitespace_count=0;
%}

vowel [AEIOUaeiou]
consonants [A-Za-z]
digit [0-9]
whitespace ([ ])+

%%
{vowel} {vowel_count++;}
{consonants} { consonant_count++;}
{digit} {digit_count++;}
{whitespace} {whitespace_count++;}
%%

int main(){

printf("\nEnter the string: \n");
yylex();
printf("The number of Vowel in entered string is: %d \n",vowel_count);
printf("The number of Consonants in entered string is: %d \n",consonant_count);
printf("The number of Digits in entered string is: %d \n",digit_count);
printf("The number of Whitespace in entered string is: %d \n",whitespace_count);
return 0;

}

int yywrap(void){
return 1;
}
