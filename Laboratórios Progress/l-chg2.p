/*5 � Modifique o programa l-chg1.p, chamando-o de l-chg2.p para pedir o c�digo do
cliente e depois alter�-lo, utilize o comando UPDATE.*/

repeat-block:

REPEAT:
  PROMPT-FOR customer.custnum.
  FIND customer USING custnum.
  UPDATE customer WITH 1 COLUMN WIDTH 200.

END.
