%{
#include <stdio.h>
%}

%token NUM
%token PLUS
%token MINUS

%%

expression: expression PLUS term
          | expression MINUS term
          | term
          ;

term: term PLUS factor
    | term MINUS factor
    | factor
    ;

factor: NUM
      ;

%%

int main() {
    yyparse();
    return 0;
}

int yyerror(const char *msg) {
    fprintf(stderr, "Error: %s\n", msg);
    return 1;
}
