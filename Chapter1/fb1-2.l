/* 
fb1-2.l: English to American
English -> American 
*/
%{
#include <stdio.h>
%}

%%
"colour"       { printf("color");     }
"flavour"      { printf("flavor");    }
"clever"       { printf("smart");     }
"conservative" { printf("liberal");   }
.              { printf("%s",yytext); }
%%
