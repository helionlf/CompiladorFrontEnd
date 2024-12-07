
%%

%unicode
%standalone

WHITESPACE = [ \t\n\r]+
DIGIT = [0-9]+
LETTER = [a-zA-Z_]
ID = {LETTER}({LETTER}|{DIGIT})*
FLOAT = {DIGIT}+"."+{DIGIT}+ | "."{DIGIT}+
COMMENT_SINGLE = "//".*
COMMENT_MULTI = "/*"([^*]|[*][^/])*"*/"

%%

<YYINITIAL> {
    {WHITESPACE}                  { /**/ }
    "if"                          { System.out.println("IF - Lexema: " + yytext()); }
    "else"                        { System.out.println("ELSE - Lexema: " + yytext()); }
    "while"                       { System.out.println("WHILE - Lexema: " + yytext()); }
    "return"                      { System.out.println("RETURN - Lexema: " + yytext()); }
    "int"                         { System.out.println("INT - Lexema: " + yytext()); }
    "float"                       { System.out.println("FLOAT - Lexema: " + yytext()); }
    {ID}                          { System.out.println("Identificador - Lexema: " + yytext()); }
    {DIGIT}                       { System.out.println("Digito - Lexema: " + yytext()); }
    {FLOAT}                       { System.out.println("Float - Lexema: " + yytext()); }
    "=="                          { System.out.println("EQ - Lexema: " + yytext()); }
    "="                          { System.out.println("ATRIBUICAO - Lexema: " + yytext()); }
    "!="                          { System.out.println("NEQ - Lexema: " + yytext()); }
    "<"                           { System.out.println("LT - Lexema: " + yytext()); }
    "<="                          { System.out.println("LE - Lexema: " + yytext()); }
    ">"                           { System.out.println("GT - Lexema: " + yytext()); }
    ">="                          { System.out.println("GE - Lexema: " + yytext()); }
    "+"                           { System.out.println("PLUS - Lexema: " + yytext()); }
    "-"                           { System.out.println("MINUS - Lexema: " + yytext()); }
    "*"                           { System.out.println("TIMES - Lexema: " + yytext()); }
    "/"                           { System.out.println("DIVIDE - Lexema: " + yytext()); }
    ";"                           { System.out.println("SEMI - Lexema: " + yytext()); }
    ","                           { System.out.println("COMMA - Lexema: " + yytext()); }
    "{"                           { System.out.println("LCURLY - Lexema: " + yytext()); }
    "}"                           { System.out.println("RCURLY - Lexema: " + yytext()); }
    "("                           { System.out.println("LPAREN - Lexema: " + yytext()); }
    ")"                           { System.out.println("RPAREN - Lexema: " + yytext()); }
    {COMMENT_SINGLE}              { /**/ }
    {COMMENT_MULTI}               { /**/ }
    .                             { System.err.println("Illegal character: " + yytext()); }
}
