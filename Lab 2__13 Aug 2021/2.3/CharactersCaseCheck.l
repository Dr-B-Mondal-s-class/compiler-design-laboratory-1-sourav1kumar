%{

%}

lowercase [a-z]+
uppercase [A-Z]+
both [A-Za-z]+


%%
^{lowercase} {printf("Lowercase Characters only\n"); }
^{uppercase} {printf("Uppercase Characters only\n"); }
^{both} {printf("Both lowercase and uppercase characters\n"); }
.* {printf("Other\n"); }
%%

main()
{
	yylex();
}
yywrap(void)
{
	return 0;
}
