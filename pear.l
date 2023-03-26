
%%
int                                             { printf("TYPE_INT \n"); }
float                                           { printf("TYPE_FLOAT \n"); }
char                                            { printf("TYPE_CHAR \n"); }
string                                          { printf("TYPE_STRING \n"); }
bool                                            { printf("TYPE_BOOL \n"); }

[+-]?[0-9]+                                     { printf("INTEGER \n"); }
[+-]?[0-9]*\.[0-9]+                             { printf("FLOATING_POINT \n"); }
'.'                                             { printf("CHARACTER \n"); }
\"([^\"\n]*|\\.)+\"                             { printf("STRING \n"); }
true|false                                      { printf("BOOLEAN \n"); }

if                                              { printf("IF \n"); }
else                                            { printf("ELSE \n"); }
while                                           { printf("WHILE \n"); }
print                                           { printf("PRINT \n"); }
scan                                            { printf("SCAN \n"); }
fun                                             { printf("FUNCTION \n"); }
return                                          { printf("RETURN \n"); }


"=="|"!="|">"|"<"|">="|"<="                     { printf("COMPARISON_OPERATOR \n"); }
"&&"                                            { printf("LOGICAL_AND_OPERATOR \n"); }
"||"                                            { printf("LOGICAL_OR_OPERATOR \n"); }
"!"                                             { printf("LOGICAL_NOT_OPERATOR \n"); }

[[:alpha:]_][[:alnum:]_]*                       { printf("IDENTIFIER \n"); }
"("                                             { printf("LEFT_PARENTHESIS \n"); }
")"                                             { printf("RIGHT_PARENTHESIS \n"); }
"{"                                             { printf("LEFT_BRACE \n"); }
"}"                                             { printf("RIGHT_BRACE \n");}
";"                                             { printf("SEMICOLON \n"); }
"="                                             { printf("ASSIGNMENT_OPERATOR \n"); }
","                                             { printf("COMMA \n"); }      
[+\-*\/]                                        { printf("ARITHMETIC_OPERATOR \n"); }


[ \t]+                                          /* Ignore whitespace */

"//"(.)*\n                                      /* Ignore comments */

"'.'"                                           { printf("CHARACTER \n"); }

.                                               { printf("ERROR: unrecognized character\n"); }
%%
