/* V�rios par�metros de entrada */

//  Isso abrir� uma caixa de mensagem dizendo "OL� MUNDO"

FUNCTION cat RETURNS CHARACTER ( c AS CHARACTER, d AS CHARACTER):

    RETURN c + " " + d.

END.

MESSAGE cat("HELLO", "WORLD") VIEW-AS ALERT-BOX.

