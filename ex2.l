%{
#include "calculator.tab.h"
%}

%%

[0-9]+      { yylval = atoi(yytext); return NUM; }
[-+]        { return *yytext; }
[ \t\n]     ;  /* пропуск пробелов и символов новой строки */
.           { return *yytext; }

%%

int yywrap() {
    return 1;
}
