%option noyywrap

%{
#include <stdio.h>

#define YY_DECL int yylex()

#include "icalc.tab.h"

%}
DIGIT   [0-9]
%%
{DIGIT}+      {   yylval.ival = atoi(yytext);
                return INUM;    }
"+"         {   return PLUS;    }
"-"         {   return MINUS;   }
"*"         {   return MULT;    }
"/"         {   return DIV;     }
\n          {   return NEWLINE; }
[ \t]+       /*ignore whitespace*/
.           {   return yyerror(yytext);     }
%%
