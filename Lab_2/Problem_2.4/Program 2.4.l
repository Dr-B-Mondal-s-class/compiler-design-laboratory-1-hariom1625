%{
// Write a lex program to check if the given input contains only Uppercase letters or Lowercase letters or Digits or Special characters or Mixed characters.
%}

Lowercase [a-z]
Uppercase [A-Z]
Digit [0-9]
Mixed [A-Za-z0-9]

%%
{Lowercase}+ {printf("Only Lowercase letters are present\n");};
{Uppercase}+ {printf("Only Uppercase letters are present\n");};
{Digit}+ {printf("Only Digits are present\n");};
{Mixed}+ {printf("Mixed characters present\n");};
.* {printf("Special characters are present\n");};
%%

int main(){
yylex();
return 0;
}
int yywrap(void){
return 1;
}
