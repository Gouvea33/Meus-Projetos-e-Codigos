/* INDEX - retorna a posi��o de uma string em uma string.

R-INDEX vontade para a mesma coisa, mas pesquise da direita para a esquerda.

�NDICE(fonte, destino)

Pesquise o alvo na fonte (da esquerda para a direita) e retorne sua posi��o. Se 
estiver faltando, retorne 0.

�NDICE(fonte, destino, posi��o inicial).

O mesmo que acima, mas comece a pesquisar na posi��o inicial */


DEFINE VARIABLE str AS CHARACTER   NO-UNDO.

str = "ABCDEFGH".

DISPLAY INDEX(str, "cd") INDEX(str, "cd", 4). //Will display 3 and 0
