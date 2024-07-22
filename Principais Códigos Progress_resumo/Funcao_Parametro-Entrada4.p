/* Vários parâmetros de entrada */

//  Isso abrirá uma caixa de mensagem dizendo "OLÁ MUNDO"

FUNCTION cat RETURNS CHARACTER ( c AS CHARACTER, d AS CHARACTER):

    RETURN c + " " + d.

END.

MESSAGE cat("HELLO", "WORLD") VIEW-AS ALERT-BOX.

