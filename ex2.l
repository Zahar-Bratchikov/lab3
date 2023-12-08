%{
    #include <stdio.h>
    #include <string.h>
    #include <stdlib.h>
    #include "ex2.tab.h"
%}
%%
[0-9]+  {yylval.num=atoi(yytext); return NUMBER;}/*передача бизону токе на числа */
"+" {return PLUS;}
"-" {return MINUS;}
\n  {return EOL;}
. {printf("Ошибка\n");}
%%
int yywrap(){
}