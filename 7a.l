%{
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
char findword[20] ,replaceword[20];
int flag = 0;
%}



%%
[a-zA-Z.!?]* {  if(strcmp(findword,yytext)==0)
		{
			flag = 1;
			fputs(replaceword,yyout);
		}
		else{ 
			fputs(yytext,yyout);
	  }
	}
[ ^\t]		{fputs(yytext,yyout);}
[\n]		{fputs(yytext,yyout);}
"<<EOF>>" {fputs(yytext,yyout);}

%%

int yywrap()
{
return 1;
}

int main()
{
	yyin = fopen("find_replace_file.txt","r");
	yyout = fopen("replaced_file.txt","w");
	printf("\nEnter the word you need to replace!\n");
	scanf("%s",findword);

	printf("\nEnter the word you wish to replace '%s' with\n",findword);
	scanf("%s",replaceword);
	yylex();
	if(flag ==0)
	{
		printf("\nERROR : %s doesn't exist in the file\n",findword);
	}
	if(flag == 1)
	{
		printf("\nSUCCESS!");
	}
}
	
