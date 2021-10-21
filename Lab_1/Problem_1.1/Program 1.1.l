%{
// Write a lex program to check if the given input is a Digit.
%}

Digit [0 - 9]

% %
{Digit} {printf("Digit");};
.* {printf("Not Digit");};
% %

int main() {
yylex();
return 0;
}

int yywrap(void) {
return 1;
}
