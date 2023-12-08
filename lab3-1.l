%{
#include <stdio.h>
%}

%%

[0-9]+      { printf("DIGIT: %s\n", yytext); }
"+"         { printf("PLUS\n"); }
"-"         { printf("MINUS\n"); }
"*"         { printf("MULTIPLY\n"); }
"/"         { printf("DIVIDE\n"); }
"("         { printf("LEFT_PAREN\n"); }
")"         { printf("RIGHT_PAREN\n"); }
\n          { printf("NEWLINE\n"); }
.           { printf("UNKNOWN CHARACTER\n"); }

%%

int main() {
    yylex();
    return 0;
}
