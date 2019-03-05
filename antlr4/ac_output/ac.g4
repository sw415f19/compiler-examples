grammar ac;
prog:     dcls stmts;
dcls:	  dcl*;
dcl: 	  FLOATDCL ID 
    	| INTDCL ID;
stmts:	stmt*;

stmt:     ID ASSIGN val expr 
		| PRINT ID;

expr:     (PLUS val)* 
		| (MINUS val)*; 

val: 	  ID 
		| INUM 
		| FNUM;
	
FLOATDCL:	'f';
INTDCL: 	'i';
PRINT: 		'p';
ID: 		[a-e] | [g-h] | [j-o] | [q-z];
ASSIGN:		 '=';
PLUS:		 '+';
MINUS:		 '-';
INUM:		 [0-9]+;
FNUM:		 [0-9]+.[0-9]+;
BLANK:		 [ \t\r\n]+ -> skip;


