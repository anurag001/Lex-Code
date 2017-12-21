%%
is|am|are|were|was printf("%s is verb.\n",yytext);
[a-zA-Z]+ printf("%s is not verb.\n",yytext);
.|\n ;
%%
int main(void)
{
	yylex();
	return 0;
}
