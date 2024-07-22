/* SUBSTITUTE - substitui parâmetros em uma string.

SUBSTITUTE is a limited function for replacing up to nine preformatted parameters 
in a string.
SUBSTITUIR(string, param1, param2, ..., param9).

Os parâmetros devem estar no &1 formato &9.

Se você quiser usar um "e" comercial na string (e não usá-lo como parâmetro), 
escape-o com outro "e" comercial: &&.*/



DEFINE VARIABLE str AS CHARACTER   NO-UNDO.
                                      
str = "&1 made &2 goals in &3 games playing for &4".

MESSAGE SUBSTITUTE(str, "Zlatan Ibrahimovic", 113, 122, "Paris Saint-Germain") VIEW-AS ALERT-BOX.
MESSAGE SUBSTITUTE(str, "Mats Sundin", 555, 1305, "Toronto Maple Leafs") VIEW-AS ALERT-BOX.
