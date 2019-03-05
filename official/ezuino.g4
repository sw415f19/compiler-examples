grammar ezuino;
start:      dcls stmts;
dcls:       dcl*
        ;
dcl:        INTDCL ID
        |   DOUBLEDCL ID
        |   STRINGDCL ID
        |   BOOLDCL ID;
stmts:      stmt*
        ;
stmt:       ID ASSIGN val expr
        |   ID ASSIGN booleantf
        |   PRINT ID
        ;
expr:       (PLUS val)*
        |   (MINUS val)*
        ;
val:        ID
        |   INTERGER
        |   DOUBLE
        |   STRING
        ;
booleantf:  TRUE
        |   FALSE
        ;
 
INTDCL              : 'int' ;
DOUBLEDCL           : 'double' ;
STRINGDCL           : 'string' ;
BOOLDCL             : 'boolean' ;
PRINT               : 'print' ;
ASSIGN              : ':=' ;
PLUS                : '+' ;
MINUS               : '-' ;
DIVIDE              : '/' ;
MULTIPLE            : '*' ;
AND                 : 'AND' ;
OR                  : 'OR' ;
LESS                : '<' ;
GREATER             : '>' ;
EQUAL               : '==' ;
LESSTHANOREQUAL     : '<=' ;
GREATERTHANOREQUAL  : '>=' ;
ELSE                : 'else' ;
IF                  : 'if' ;
TRUE                : 'TRUE' ;
FALSE               : 'FALSE' ;
 
ID                  : [a-z] ;
INTERGER            : [0-9]+ ;
DOUBLE              : [0-9]+.[0-9]+ ;
STRING              : '"' (~["\r\n] | '""') '"' ;
 
BLANK               : [ \t\r\n]+ -> skip ;
COMMENT             : '#' ~[\r\n]*-> skip ;
