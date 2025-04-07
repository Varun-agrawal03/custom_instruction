%{
#include "calc.tab.h"
#include <stdlib.h>
%}

%%

[0-9]+      { yylval = atoi(yytext); return NUMBER; }
"**"        { return POWPOW; }
"+"         { return '+'; }
"-"         { return '-'; }
"*"         { return '*'; }
"/"         { return '/'; }
"("         { return '('; }
")"         { return ')'; }
[ \t]       ;                  // Skip spaces and tabs
\n          { return '\n'; }   // Return newline to Bison
.           { return yytext[0]; }

%%

int yywrap() {
    return 1;
}
