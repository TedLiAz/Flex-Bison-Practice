/* fb2-1.l: Word count reading one file */

/* Even more like Unix wc */
%option noyywrap
%{
#include <stdio.h>
#include <string.h>

    int chars = 0;
    int lines = 0;
    int words = 0;
%}

%%
[a-zA-Z]+ { words++; chars += strlen(yytext); }
\n        { chars++; lines++;                 }
.         { chars++;                          }
%%

int main(int argc, char** argv)
{
    if(argc > 1 )
    {
        if(!(yyin = fopen(argv[1],"r"))) {
            perror(argv[1]);
            return 1;
        }
    }
    yylex();
    printf("%8d%8d%8d\n",lines,words,chars);
    return 0;
}
