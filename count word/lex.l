%{
int nchar=0;
int nword=0;
int nline=0;
%}

%%
\n {nline++,nchar++,printf("New line C=%d\n",nchar);}
[^ \t\n]+ {nword++,nchar+=yyleng,printf("%s C=%d\n",yytext,nchar);}
. {nchar++,printf("Char %s C=%d\n",yytext,nchar);}
%%

int main(int argc,char *argv[]) 
{
	yyin = fopen(argv[1],"r");
    yylex();
    printf("No of chars = %d\nNo of words = %d\nNo of new lines = %d\n", nchar, nword, nline);
    return 0;
}
