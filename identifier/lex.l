digit [0-9]
letter [a-zA-Z]
%{
int count=0;
%}

%%
{letter}+|{letter}+{digit}* {printf("%s is identifier\n",yytext),count++;}
{digit}+{letter}* {printf("%s is not identifier\n",yytext);}
%%
int yywrap(void)
{
	return 1;
}
int main(int argc,char *argv[]) 
{
    yyin = fopen(argv[1],"r");
    yylex();
    printf("No of identifiers =  %d\n",count);
    return 0;
}
