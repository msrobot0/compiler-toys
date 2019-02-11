%{
#include <stdio.h>
#include "y.tab.h"
%}

%%
[\{.*\}]   /*return PIECE; */;
\[.*\]   /*return PIECE; */;
[0123456789]\.   /*return MOVE */;
[0123456789]   yylval=atoi(yytext); return RANK;
[a-h]   /*yylval=strdup(yytext); return FLEi*/;
[RBNKQ]   /*return PIECE; */;
O-O-O   /*return QCASTLE; */;
[x]   /*return CAPTURE*/;
[+]   /*return CHECK;*/;
[#]   /*return CHECKMATE; */;
[=]   /*return PAWNPROMOTION; */;
%%
