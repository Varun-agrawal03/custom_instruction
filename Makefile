all:
	bison -d calc.y
	flex calc.l
	gcc -o calc calc.tab.c lex.yy.c main.c -lm

clean:
	rm -f calc lex.yy.c calc.tab.c calc.tab.h
