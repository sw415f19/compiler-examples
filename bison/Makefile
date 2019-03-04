all: icalc

icalc.tab.c icalc.tab.h:	icalc.y
	bison -d icalc.y

lex.yy.c: icalc.l icalc.tab.h
	flex icalc.l

icalc: lex.yy.c icalc.tab.c icalc.tab.h
	gcc -o icalc icalc.tab.c lex.yy.c

clean:
	rm icalc icalc.tab.c lex.yy.c icalc.tab.h
