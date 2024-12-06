import java_cup.runtime.Symbol;

%%

%class scanner
%unicode
%cup

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
    "if"                          { return new Symbol(sym.IF); }
    "else"                        { return new Symbol(sym.ELSE); }
    "while"                       { return new Symbol(sym.WHILE); }
    "return"                      { return new Symbol(sym.RETURN); }
    "int"                         { return new Symbol(sym.INT); }
    "float"                       { return new Symbol(sym.FLOAT); }
    {ID}                          { return new Symbol(sym.ID, yytext()); }
    {DIGIT}                       { return new Symbol(sym.INT_CONST, Integer.parseInt(yytext())); }
    {FLOAT}                       { return new Symbol(sym.FLOAT_CONST, Float.parseFloat(yytext())); }
    "=="                          { return new Symbol(sym.EQ); }
    "="                          { return new Symbol(sym.ATRIBUICAO); }
    "!="                          { return new Symbol(sym.NEQ); }
    "<"                           { return new Symbol(sym.LT); }
    "<="                          { return new Symbol(sym.LE); }
    ">"                           { return new Symbol(sym.GT); }
    ">="                          { return new Symbol(sym.GE); }
    "+"                           { return new Symbol(sym.PLUS); }
    "-"                           { return new Symbol(sym.MINUS); }
    "*"                           { return new Symbol(sym.TIMES); }
    "/"                           { return new Symbol(sym.DIVIDE); }
    ";"                           { return new Symbol(sym.SEMI); }
    ","                           { return new Symbol(sym.COMMA); }
    "{"                           { return new Symbol(sym.LCURLY); }
    "}"                           { return new Symbol(sym.RCURLY); }
    "("                           { return new Symbol(sym.LPAREN); }
    ")"                           { return new Symbol(sym.RPAREN); }
    {COMMENT_SINGLE}              { /**/ }
    {COMMENT_MULTI}               { /**/ }
    .                             { System.err.println("Illegal character: " + yytext()); }
}
