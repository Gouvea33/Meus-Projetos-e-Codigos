/*8 � Escreva um programa l-match.p que pe�a uma string (utilize o campo nome do
cliente) e mostre o c�digo, nome e representante de todos os clientes que possuam
em qualquer posi��o do nome a string informada.*/

first-blk:
REPEAT:
    
    PROMPT-FOR customer.NAME.
    
    FOR EACH customer
        WHERE customer.NAME MATCHES '' + input customer.name +  ''.
        DISPLAY customer.custnum
             customer.NAME
             customer.salesrep.
     END.

END.
