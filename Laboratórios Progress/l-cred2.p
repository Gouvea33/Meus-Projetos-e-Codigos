/*9 – Escreva um programa l-cred2.p que peça o código do cliente e mostre o
número, o nome e limite de crédito. Então o programa deverá mostrar os mesmos
dados para todos os clientes cujo limite de crédito seja igual ou maior do que o
informado, classificado em ordem decrescente por limite de crédito.
(Dica: Depois de encontrar o cliente original, grave o limite de crédito em uma
variável. Use esta variável quando for localizar os outros clientes).*/

DEF VAR i-cod AS INT FORMAT ">>>,>>9".

  PROMPT-FOR customer.custnum.
  FIND customer WHERE customer.custnum = INPUT customer.custnum.
  DISPLAY customer.custnum customer.NAME customer.creditlimit.
  ASSIGN i-cod = customer.creditlimit.

  FOR EACH customer WHERE customer.creditlimit >= i-cod
      BY customer.creditlimit DESC:
      DISPLAY customer.custnum customer.NAME customer.creditlimit.
  END.
