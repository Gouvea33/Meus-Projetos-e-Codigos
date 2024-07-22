/*10 - Resolva o que foi pedido no programa anterior usando buffer 
( não usar a variável ) */

DEF BUFFER bf-cust FOR customer.

PROMPT-FOR customer.custnum.
FIND customer WHERE customer.custnum = INPUT customer.custnum.
DISPLAY customer.custnum customer.NAME customer.creditlimit.
ASSIGN customer.creditlimit.
FOR EACH bf-cust
      WHERE bf-cust.creditlimit >= customer.creditlimit
      BY bf-cust.creditlimit DESC:
      DISPLAY bf-cust.custnum bf-cust.NAME bf-cust.creditlimit.
END.


