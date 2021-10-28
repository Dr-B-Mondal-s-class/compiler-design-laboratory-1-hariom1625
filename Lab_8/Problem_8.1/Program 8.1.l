%{

// Write a program using Lex and YACC to respond to the entered Input.

#include "y.tab.h"
int yyerror(char *errormsg);

%}

%%
("hi")"\n" {return Hi;}
("hiehie")"\n" {return HieHie;}

. {yyerror("Unknown string");};

%%

int main(){

yyparse();
return 0;

}

int yywrap(){

return 0;
}

int yyerror(char *errormsg){

fprintf(stderr,"%s\n", errormsg);
exit(0);

}
