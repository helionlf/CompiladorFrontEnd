
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
    "if"                          { System.out.println("IF"); }
    "else"                        { System.out.println("ELSE"); }
    "while"                       { System.out.println("WHILE"); }
    "return"                      { System.out.println("RETURN"); }
    "int"                         { System.out.println("INT"); }
    "float"                       { System.out.println("FLOAT"); }
    {ID}                          { System.out.println("Identificador"); }
    {DIGIT}                       { System.out.println("Digito"); }
    {FLOAT}                       { System.out.println("Float"); }
    "=="                          { System.out.println("EQ"); }
    "="                          { System.out.println("ATRIBUICAO"); }
    "!="                          { System.out.println("NEQ"); }
    "<"                           { System.out.println("LT"); }
    "<="                          { System.out.println("LE"); }
    ">"                           { System.out.println("GT"); }
    ">="                          { System.out.println("GE"); }
    "+"                           { System.out.println("PLUS"); }
    "-"                           { System.out.println("MINUS"); }
    "*"                           { System.out.println("TIMES"); }
    "/"                           { System.out.println("DIVIDE"); }
    ";"                           { System.out.println("SEMI"); }
    ","                           { System.out.println("COMMA"); }
    "{"                           { System.out.println("LCURLY"); }
    "}"                           { System.out.println("RCURLY"); }
    "("                           { System.out.println("LPAREN"); }
    ")"                           { System.out.println("RPAREN"); }
    {COMMENT_SINGLE}              { /**/ }
    {COMMENT_MULTI}               { /**/ }
    .                             { System.err.println("Illegal character: " + yytext()); }
}
