%{
#include <stdio.h>
#include <string.h>

    void fim_texto(char* string) { 

	int tam;
	tam = strlen(string);

  	int contadora = 0;

	for(contadora=0; contadora<(tam-1); contadora++){
	printf("%c", string[contadora]);
	}

	printf("\n");
    
    }	

%}


%%

(([a-zA-z\.\-\_0-9]+(\@)[a-zA-z\.\-\_0-9]+)\.) {fim_texto(yytext);}

(([a-z0-9A-Z\.\-\_]+)\@([a-z0-9A-Z\.\-\_]+)([\.\-\_])) ; /*dominio com pont. no final*/

(([a-z0-9A-Z\.\-\_]+)([\.\-\_])\@([a-z0-9A-Z\.\-\_]+)) ; /*nome de usuario com pont. no final*/


([a-zA-z\.\-\_0-9]+(\@)[a-zA-z\.\-\_0-9]+) {printf("%s\n", yytext); }

[[:space:]]+ ;
[[:^space:]]+ ;




%%

int main() {
  yylex();
  return 0;
}
