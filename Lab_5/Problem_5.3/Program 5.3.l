%{
// Write a lex program to check URL is Valid or Not.
#include <stdio.h>
int keyword=0,id=0,op=0,sep=0,in=0,fl=0;
%}
Protocol "http"|"https"
DomainName [A-Za-z0-9]{1,}
TopLevelDomain "in"|"com"|"ac.in"|"org"|"edu"|"co.in"
URL {Protocol}:\/\/"www"\.{DomainName}\.{TopLevelDomain}
%%

{URL} {printf("Valid URL\n");};
.* {printf("Invalid URL\n");};

%%

int main(){
yylex();

return 0;
}

int yywrap(void){
return 1;
}
