%{
#include <stdio.h>
%}

%%
[0123456789]\.    printf("MOVE ");
[0123456789]    printf("RANK ");
[a-h]   printf("FILE ");
[RBNKQ]   printf("PIECE ");
O-O   printf("KCASTLE ");
O-O-O   printf("QCASTLE ");
[x]   printf("CAPTURE ");
[+]   printf("CHECK ");
[#]   printf("CHECKMATE ");
[=]   printf("PAWNPROMOTION ");
[\d/\d-\d/\d]   printf("GAME OVER ");
%%
