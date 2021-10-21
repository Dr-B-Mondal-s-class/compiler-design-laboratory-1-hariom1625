%{
// Write a lex program to check whether the input string is a Valid Email address or not.
%}

Char [a-z0-9!#$%&'+-/=?^_`{}|~]+
SecondLevelDomain "gmail"|"rediff"|"yahoo"|"iiitranchi"
TopLevelDomain ".com"|".ac.in"|".org"|".edu"|".co.in"
Email {Char}+"@"+{SecondLevelDomain}+{TopLevelDomain}

%%
{Email} {printf("Valid Email Address\n");};
.* {printf("Invalid Email Address\n");};
%%
int main(){

yylex();

return 0;
}
int yywrap(void){
return 1;
}
