lex pgn_yacc.l
yacc -d pgn_yacc.y
cc lex.yy.c y.tab.c -o pgn_yacc
./pgn_yacc < file.pgn
