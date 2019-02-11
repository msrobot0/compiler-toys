# compiler-toys
A bunch of scripts that have a playful relationship with compilers

lex pgn.l
cc lex.yy.c -o pgn -ll
./pgn < file.pgn

with yacc
lex pgn.l
yacc -d pgn.y
cc lex.yy.c y.tab.c -o pgn 

