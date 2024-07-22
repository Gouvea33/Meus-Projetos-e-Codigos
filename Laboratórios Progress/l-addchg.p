/* 16 – Escreva um programa l-addchg.p que permita incluir um cliente ou alterar um
registro de cliente existente. Esteja certo de que não possa alterar o código de um
cliente existente.*/


REPEAT WITH 1 COLUMN:
  PROMPT-FOR customer.custnum.
  FIND customer USING customer.custnum NO-ERROR.
  IF NOT AVAILABLE customer THEN DO:
     CREATE customer.
     ASSIGN customer.custnum.
    
  END.
  UPDATE customer EXCEPT customer.custnum WITH WIDTH 200 SIDE-LABELS.

END.
