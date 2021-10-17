%{
%}

start "+91 "
digits [0-9]{10}
mobileNo ({start}{digits})

%%
{mobileNo} {printf("This is Valid Mobile No!\n");}
.* {printf("Invalid Mobile No!\n");}
%%

main()
{
	yylex();
}
yywrap(void)
{
	return 0;
}
