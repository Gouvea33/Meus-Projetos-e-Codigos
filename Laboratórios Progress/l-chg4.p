/*7 – Modifique o programa l-chg3.p, chamando-o de l-chg4.p para fazer o mesmo
que o anterior, mas sem utilizar os comandos UPDATE e SET.*/

REPEAT WITH 1 COLUMN:
  
  PROMPT-FOR customer.custnum.
  FIND customer USING custnum.
  DISPLAY customer WITH 1 COLUMN WIDTH 200.
  PROMPT-FOR customer.
  ASSIGN customer.
 
END.
