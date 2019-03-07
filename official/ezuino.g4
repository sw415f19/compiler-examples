grammar ezuino;
start:              dcls stmts
                ;
dcls:               dcl*
                ;
dcl:                type ID
                |   list
                ;

// TO BE ADDED : 
//list 

stmts:              stmt*
                ;

                // medium := findMedium(testOne, testTwo, testThree, testFour)
stmt:               ID ASSIGN (val | )  expr*
                |   ID ASSIGN NOT? booleantf
                |   PRINTSTMT val expr*
                |   LISTREMOVE'[' ']'
                |   LISTADD
                |   if_stmt
                |   while_stmt
                |   func
                |   switch_stmt
                |   list_add
                |   list_remove
                ;

essential_stmt:     setup
                |   loop
                ;
                
expr:               (PLUS val)
                |   (MINUS val)
                ;

//Mangler at implementere i staements
logicexpr:          EQUAL
                |   NOTEQUAL
                |   LESS
                |   LESSTHANOREQUAL
                |   GREATER
                |   GREATERTHANOREQUAL
                ;
logicoperator:    AND
                | OR
                ;
condition:          booleanexpr (logicoperator booleanexpr)*
                |   booleantf
                ;
booleanexpr:        val logicexpr val
                ; 
val:                ID
                |   INTEGER
                |   DOUBLE
                |   STRING
                ;
type:               INTDCL
                |   DOUBLEDCL
                |   BOOLDCL
                |   STRINGDCL
                ;
booleantf:          TRUE
                |   FALSE
                ;
list_id:             ID
                ;
list_size:           '['INTEGER']'
                ;

switch_stmt:        SWITCH '(' val ')' block_switch
                ;

return_stmt:        RETURN val
                ;

if_stmt:            IF'(' condition ')' block
                ;
while_stmt:         WHILE'(' condition ')' block
                ;  

parameters:         '(' param?(',' param)* ')'
                ;
param:              type ID
                ;

func:               FUNCTION type? ID parameters block_func
                ;

setup:              FUNCTION 'setup()' block
                ;
loop:               FUNCTION 'loop()' block
                ;

block:              SBRACE dcls stmts EBRACE
                ;
block_func:         SBRACE dcls stmts return_stmt?   EBRACE
                ; 
block_switch:       SBRACE (CASE val(',' val)*':' block_func)* (DEFAULT':' block_func)? EBRACE
                ;
list:               LISTDCL type list_id list_size ASSIGN '('(val','?)*')' 
                ;

list_add:           LISTADD'('ID ',' val ',' INTEGER')'
                ;   

list_remove:        LISTREMOVE'('ID ',' val ',' INTEGER')'
                ;

// DECLARATIONS
INTDCL              : 'int' ;
DOUBLEDCL           : 'double' ;
STRINGDCL           : 'string' ;
BOOLDCL             : 'boolean' ;
LISTDCL             : 'list' ;

// STATEMENTS
PRINTSTMT           : 'print' ;
ASSIGN              : ':=' ;
LISTADD             : 'list_add' ;
LISTREMOVE          : 'list_remove' ;

// OPERATORS
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

// CONDITIONALS
ELSE                : 'else' ;
IF                  : 'if' ;
WHILE               : 'while' ;
TRUE                : 'TRUE' ;
FALSE               : 'FALSE' ;
SWITCH              : 'switch' ;
CASE                : 'case' ;
RETURN              : 'return' ;
FUNCTION            : 'func' ;
DEFAULT             : 'default' ;



// IDENTIFIERS
ID                  : [a-zA-Z]+[a-zA-Z0-9]* ;
SBRACE              : '{' ;
EBRACE              : '}' ;

// DATA TYPES
INTEGER             : [0-9]+ ;
DOUBLE              : [0-9]+'.'[0-9]+ ;
STRING              : '"' (~["\r\n] | '""')* '"' ;

// EXTRA
BLANK               : [ \t\r\n]+ -> skip ;
COMMENT             : '#' ~[\r\n]*-> skip ;
