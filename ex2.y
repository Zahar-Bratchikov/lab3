%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "ex_2.tab.h"
int yylex();//возвращение входного символа
int yyerror( char *s);//вывод сообщения об ошибке
%}

%union{
    int num;
}
%token EOL
%token<num> NUMBER
%type<num> exp
%token PLUS MINUS
%%
input:
|    line input;
line:
    exp EOL {printf("%d\n",$1);}
|   EOL;
exp:
    NUMBER {$$=$1;}
|   exp PLUS exp {$$=$1+$3;}//наследование суммы ($1+$3)
|   exp MINUS exp {$$=$1-$3;};
%%
int main(){
    yyparse();
    return 0;
}
int yyerror( char *s){
    printf("ERROR:%s\n",s);
    return 0;
}