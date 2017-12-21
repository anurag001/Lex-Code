digit [0-9]
letter [a-zA-Z]
%{
#include<stdio.h>
int nword=0;
int nline=0;
int nchar=0;
%}
%%
[\n] {nline++,nchar++,printf("New line C=%d\n",nchar);}
[^ \t\n]+ {nword++,nchar+=yyleng,printf("%s C=%d\n",yytext,nchar);}
. {nchar++,printf("Char %s C=%d\n",yytext,nchar);}
%%
int main()
{
	yylex();
	printf("\nNo. of Words = %d\nNo. of Lines = %d\n No. of Characters = %d\n",nword,nline,nchar);
	return 0;
}


