seq [0-9]*
%{
#include<stdio.h>
%}
%%
{seq}[0|2|4|6|8] {printf("Even %d\n",atoi(yytext));return atoi(yytext);}
{seq}[1|3|5|7|9] {printf("Odd %d\n",atoi(yytext));return atoi(yytext);}
%%
int main()
{
	int n1 = yylex();
	int n2 = yylex();
	int diff = n1-n2;
	if(diff%2!=0)
	{
		printf("Correct seq\n");
	}
	else
	{
		printf("Incorrect seq\n");
	}
}
int yywrap(void)
{
return 1;
}
