/* 13 – Modifique o programa l-chg2.p, chamando-o de l-chg5.p, para usar uma
variável que peça o código de um cliente e encontre o registro desse cliente.*/


DEFINE VARIABLE codigo LIKE customer.custnum.
REPEAT WITH 1 COLUMN:
   UPDATE codigo.
   FIND customer
       WHERE customer.custnum = codigo.
   UPDATE customer EXCEPT customer.custnum WITH WIDTH 200 SIDE-LABELS.
END.
