all: fb1-5 fb1-4 fb1-3 fb1-2 fb1-1

fb1-5: fb1-5.l fb1-5.y
	bison -d fb1-5.y
	flex fb1-5.l
	gcc -o $@ fb1-5.tab.c lex.yy.c -lfl -g

fb1-4: fb1-4.l
	flex $^
	gcc -o $@ lex.yy.c -lfl -g

fb1-3: fb1-3.l
	flex $^
	gcc -o $@ lex.yy.c -lfl -g

fb1-2: fb1-2.l
	flex $^
	gcc -o $@ lex.yy.c -lfl -g

fb1-1: fb1-1.l
	flex $^
	gcc -o $@ lex.yy.c -lfl -g

clean:
	-@rm fb1-5.tab.*
	-@rm fb1-5 fb1-4 fb1-3 fb1-2 fb1-1
	-@rm lex.yy.c
