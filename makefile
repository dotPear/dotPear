pear: pear.l
	lex pear.l
	gcc -o pear lex.yy.c -ll

clean:
	rm pear lex.yy.c