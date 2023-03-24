%%
int     { printf("TYPE_INT \n"); }
float   { printf("TYPE_FLOAT \n"); }
char    { printf("TYPE_CHAR \n"); }
string  { printf("TYPE_STRING \n"); }
bool    { printf("TYPE_BOOL \n"); }

[+-]?[0-9]+             { printf("INTEGER \n"); }
[+-]?[0-9]*\.[0-9]+     { printf("FLOATING_POINT \n"); }
'.'                     { printf("CHARACTER \n"); }
\"([^\"\n]*|\\.)+\"     { printf("STRING \n"); }

if                      { printf("IF \n"); }
else                    { printf("ELSE \n"); }
while                   { printf("WHILE \n"); }
print                   { printf("PRINT \n"); }
scan                    { printf("SCAN \n"); }

"==" | "!=" | ">" | "<" | ">=" | "<="   { printf("COMPARISON_OPERATOR \n"); }

[[:alpha:]_][[:alnum:]_]*    { printf("IDENTIFIER \n"); }

"(" | ")" | "{" | "}" | "," | ";" | "=" | "+" | "-" | "*" | "/"  { printf("%s \n", yytext); }

[ \t\n]                 /* Ignore whitespace */

"//"(.)*\n              /* Ignore comments */

.                       { printf("ERROR: unrecognized character\n"); }
%%