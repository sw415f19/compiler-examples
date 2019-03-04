%{
#include <stdio.h>
#include <stdlib.h>

extern int yylex();
extern int yyparse();
extern FILE* yyin;

void yyerror(const char* s);
%}

%union {
    int ival;
    float fval;
}

%token NEWLINE
%token<ival> INUM
%token<fval> FNUM
%token PLUS
%token MINUS
%token MULT
%token DIV
%token NEG

%left PLUS MINUS
%left MULT DIV
%right NEG

%type<ival> exp

%%
input:
    input line
|   /*λ*/
;
line:
    NEWLINE;
|   exp NEWLINE     { printf("%d\n", $1);    } 
;
exp:
    INUM            {$$ = $1;                   }
|   exp PLUS exp    {$$ = $1 + $3;              }
|   exp MINUS exp   {$$ = $1 - $3;              }
|   exp MULT exp    {$$ = $1 * $3;              }
|   exp DIV exp     {$$ = $1 / $3;              }
|   MINUS exp %prec NEG {$$ = -$2;              }

%%
int main(){
    yyin=stdin;
    
    do {
        yyparse();
    } while(!feof(yyin));
    
    return 0;
}

void yyerror(const char* s) {
    fprintf(stderr, "Parse error: %s\n", s);
    exit(1);
}
