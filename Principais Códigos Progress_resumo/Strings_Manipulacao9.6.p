/* INDEX - retorna a posição de uma string em uma string.

R-INDEX vontade para a mesma coisa, mas pesquise da direita para a esquerda.

ÍNDICE(fonte, destino)

Pesquise o alvo na fonte (da esquerda para a direita) e retorne sua posição. Se 
estiver faltando, retorne 0.

ÍNDICE(fonte, destino, posição inicial).

O mesmo que acima, mas comece a pesquisar na posição inicial */


DEFINE VARIABLE str AS CHARACTER   NO-UNDO.

str = "ABCDEFGH".

DISPLAY INDEX(str, "cd") INDEX(str, "cd", 4). //Will display 3 and 0
