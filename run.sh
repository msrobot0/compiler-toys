lex pgn.l
cc lex.yy.c -o pgn -ll
./pgn < file.pgn
