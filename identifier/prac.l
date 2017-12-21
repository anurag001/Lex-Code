digit [0-9]
letter [a-zA-Z]
%{
int count=0;
%}

%%
{letter}+|{letter}+{digit}* {printf("%s is identifier\n",yytext);count++;return *yytext;}
{digit}+{letter}* {printf("%s is not identifier\n",yytext); return *yytext;}
%%
int main() 
{

    yylex();
    printf("No of identifiers =  %d\n",count);
    return 0;
}
