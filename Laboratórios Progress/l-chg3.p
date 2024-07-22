/*6 – Modifique o programa l-chg2.p, chamando-o de l-chg3.p para fazer o mesmo
que o anterior, mas sem utilizar o comando UPDATE, utilize o comando SET.*/

REPEAT WITH 1 COLUMN:
  
  PROMPT-FOR customer.custnum.
  FIND customer USING custnum.
  DISPLAY customer WITH 1 COLUMN WIDTH 200.
  SET customer WITH 1 COLUMN.
 
END.
