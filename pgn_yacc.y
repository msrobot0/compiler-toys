%{
#include <stdio.h>
#include <string.h>
#define YYSTYPE char *
void yyerror(const char *str)
{
        fprintf(stderr,"error: %s\n",str);
}
 
int yywrap()
{
        return 1;
} 
  
main()
{
        yyparse();
} 

%}

%token RANK FLE
%%
commands:
        |
        commands step
        ;
step:
    RANK FLE
    { 
        printf("move %s",$1);
    }
    ;
