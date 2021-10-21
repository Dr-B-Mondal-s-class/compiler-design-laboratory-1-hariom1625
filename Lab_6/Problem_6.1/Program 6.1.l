%{
// Write a lex program to check whether the input Mobile Number is Valid or Not.
%}

CountryCode "+91"
Number [1-9][0-9]{9}

%%
{CountryCode}{Number} {printf("Valid Mobile Number\n");};
.* {printf("Invalid Mobile Number\n");};
%%

int main(){

yylex();

return 0;
}
int yywrap(void){
return 1;
}
