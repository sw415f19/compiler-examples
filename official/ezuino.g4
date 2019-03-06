grammar ezuino;
start:      dcls stmts;
dcls:       dcl*
        ;
dcl:        type ID;

stmts:      stmt*
        ;
stmt:       ID ASSIGN val expr*
        |   ID ASSIGN NOT? booleantf
        |   PRINTSTMT val expr*
        |   if_stmt
        |   while_stmt
        |   func
        |   setup
        |   loop
        ;
expr:       (PLUS val)
        |   (MINUS val)
        ;

//Mangler at implementere i staements
logicexpr:      EQUAL
            |   NOTEQUAL
            |   LESS
            |   LESSTHANOREQUAL
            |   GREATER
            |   GREATERTHANOREQUAL;

logicoperator:    AND
                | OR;                        

condition:        booleanexpr (logicoperator booleanexpr)*
                | booleantf;
            

booleanexpr:   val logicexpr val; 

val:        ID
        |   INTEGER
        |   DOUBLE
        |   STRING
        ;

type:    INTDCL
        | DOUBLEDCL
        | BOOLDCL
        | STRINGDCL;

booleantf:        TRUE
                | FALSE
        ;

if_stmt:     IF'(' condition ')' block;
while_stmt:  WHILE'(' condition ')' block;  

parameters: '(' param?(',' param)* ')';
param:  type ID;

func: 'func' type? ID parameters block;

setup: 'func setup()' block;
loop:  'func loop()' block;


block: SBRACE dcls stmts EBRACE;

// DCL's
INTDCL              : 'int' ;
DOUBLEDCL           : 'double' ;
STRINGDCL           : 'string' ;
BOOLDCL             : 'boolean' ;

// STMTS
PRINTSTMT            : 'print' ;
ASSIGN              : ':=' ;

//OP
PLUS                : '+' ;
MINUS               : '-' ;
DIVIDE              : '/' ;
MULTIPLE            : '*' ;

// LOGICS
AND                 : 'AND' ;
OR                  : 'OR' ;
LESS                : '<' ;
GREATER             : '>' ;
EQUAL               : '=' ;
NOTEQUAL            : '!=' ;
NOT                 : '!';
LESSTHANOREQUAL     : '<=' ;
GREATERTHANOREQUAL  : '>=' ;

// CONDITIONAL
ELSE                : 'else' ;
IF                  : 'if';
WHILE               : 'while';
TRUE                : 'TRUE' ;
FALSE               : 'FALSE' ;

// ID
ID                  : [a-zA-Z]+[a-zA-Z0-9]*;
SBRACE              : '{';
EBRACE              : '}';

// DATA TYPES
INTEGER            : [0-9]+ ;
DOUBLE              : [0-9]+'.'[0-9]+ ;
STRING
 : '"' (~["\r\n] | '""')* '"'
 ;

// EXTRA
BLANK               : [ \t\r\n]+ -> skip ;
COMMENT             : '#' ~[\r\n]*-> skip ;
