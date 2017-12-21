seq [0-9]*
%{
#include<stdio.h>
int n1;
int n2;
%}

%%
{seq}[0|2|4|6|8] {printf("even no [%d]\n",atoi(yytext)); return atoi(yytext);}
{seq}[1|3|5|7|9] {printf("odd no [%d]\n",atoi(yytext)); return atoi(yytext);}
%%

int main(int argc,char *argv[])
{
	yyin = fopen("inp.txt","r");
	n1=yylex();
	n2=yylex();
	//n1 = atoi(argv[1]);
	//n2 = atoi(argv[2]);

	int diff = n1-n2;
	if(diff%2!=0)
	{
		printf("Correct seq\n");
	}
	else
	{
		printf("Incorrect seq\n");
	}
	return 0;
}
