%{
#include <stdio.h>


%}


%%


([a-zA-z\.\-\_0-9]+(\@)[a-zA-z\.\-\_0-9]+) {printf("%s\n", yytext); }

[[:space:]]+ ;
[[:^space:]]+ ;




%%

int main() {
  yylex();
  return 0;
}

