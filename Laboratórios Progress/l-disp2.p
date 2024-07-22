/* 12 – Escreva um programa l-disp2.p que solicite o primeiro caracter do nome e o
limite de crédito do cliente. Em seguida deve mostrar o número, o nome e o limite
de crédito de todos os clientes cujo nome comece com a letra informada e que
tenha o limite de crédito maior do que o informado.(Dica: Use duas variáveis, uma 
para caracter e outra para limite de crédito.Lembre-se de usar UPDATE para entrar 
com os valores nas variáveis).*/


DEF VAR c-nome AS CHAR FORMAT "x(1)" LABEL "nome".
DEF VAR de-limit LIKE customer.creditlimit LABEL "limite de crédito".
REPEAT:
   UPDATE c-nome de-limit.
   FOR EACH customer 
   WHERE customer.NAME BEGINS c-nome
   AND customer.creditlimit > de-limit:
   DISPLAY customer.custnum
           customer.NAME
           customer.creditlimit.
   
   END.

END.
