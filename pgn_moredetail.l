%{
#include <stdio.h>
%}

%%
[0123456789]\.    return MOVE;
[0123456789]    return RANK;
[a-h]   return FILE;
[RBNKQ]   return PIECE;
[R]   return ROOK;
[N]   return KNIGHT;
[B]   return BISHOP;
[K]   return KING;
[Q]   return QUEEN;
O-O   return KCASTLE;
O-O-O   return QCASTLE;
[x]   return CAPTURE;
[+]   return CHECK;
[#]   return CHECKMATE;
[=]   return PAWNPROMOTION;
[\d/\d-\d/\d]   printf("GAME OVER ");
%%
