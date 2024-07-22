/*9 � Escreva um programa l-cred2.p que pe�a o c�digo do cliente e mostre o
n�mero, o nome e limite de cr�dito. Ent�o o programa dever� mostrar os mesmos
dados para todos os clientes cujo limite de cr�dito seja igual ou maior do que o
informado, classificado em ordem decrescente por limite de cr�dito.
(Dica: Depois de encontrar o cliente original, grave o limite de cr�dito em uma
vari�vel. Use esta vari�vel quando for localizar os outros clientes).*/

DEF VAR i-cod AS INT FORMAT ">>>,>>9".

  PROMPT-FOR customer.custnum.
  FIND customer WHERE customer.custnum = INPUT customer.custnum.
  DISPLAY customer.custnum customer.NAME customer.creditlimit.
  ASSIGN i-cod = customer.creditlimit.

  FOR EACH customer WHERE customer.creditlimit >= i-cod
      BY customer.creditlimit DESC:
      DISPLAY customer.custnum customer.NAME customer.creditlimit.
  END.
