/* MATCHES retorna verdadeiro se determinados critérios curinga forem atendidos 
em uma string.

expressão string1 MATCHES

Retorna verdadeiro se string1 corresponder à expressão curinga:

* (asterisco) = 0 a n caracteres (basicamente qualquer string de qualquer 
comprimento)

. (ponto) = curinga para qualquer caractere (exceto nulo) */


DEFINE VARIABLE str AS CHARACTER   NO-UNDO.
DEFINE VARIABLE beg AS CHARACTER   NO-UNDO.

str = "HELLO".
beg = "HELLO".
DISPLAY str MATCHES beg. // yes

str = "HELLO".
beg = "H*".
DISPLAY str MATCHES beg. // yes

str = "HELLO".
beg = "*O".
DISPLAY str MATCHES beg. // yes

str = "HELLO WORLD".
beg = "HELLO.WORLD".
DISPLAY str MATCHES beg. // yes

str = "HELLO WORLD".
beg = "*WORL..".
DISPLAY str MATCHES beg. // no

str = "*HELLO WORLD".
beg = "WOR*LD".
DISPLAY str MATCHES beg. // no
