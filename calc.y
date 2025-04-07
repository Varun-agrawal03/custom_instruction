%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int yylex();
void yyerror(const char *);
%}

%token NUMBER
%token POWPOW

%left '+' '-'
%left '*' '/'
%left POWPOW

%%
program:
    program line
  | line
;

line:
    expr '\n'    { printf("Result: %d\n", $1); }
  | '\n'         { /* blank line */ }
;

expr:
    NUMBER
  | expr '+' expr      { $$ = $1 + $3; }
  | expr '-' expr      { $$ = $1 - $3; }
  | expr '*' expr      { $$ = $1 * $3; }
  | expr '/' expr      { $$ = $1 / $3; }
  | expr POWPOW expr   { $$ = $1*$1*$1 + $3*$3*$3; }
  | '(' expr ')'       { $$ = $2; }
;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}
