/* CHR e ASC - converte caracteres �nicos de e para ascii.

CHR(inteiro)

Retorna a representa��o de caracteres para n�mero inteiro de c�digo ascii

ASC(personagem)

Retorna o valor inteiro ascii do caractere */


DEFINE VARIABLE ix     AS INTEGER   NO-UNDO.
DEFINE VARIABLE letter AS CHARACTER NO-UNDO FORMAT "X(1)" EXTENT 26.

DO ix = 1 TO 26:
  letter[ix] = CHR((ASC("A")) - 1 + ix).
END.

DISPLAY SKIP(1) letter WITH 2 COLUMNS NO-LABELS
  TITLE "T H E  A L P H A B E T".
  
  
