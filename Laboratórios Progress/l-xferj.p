/* 11 � Escreva um programa l-xferj.p que permita associar um novo representante a
todos os clientes de um determinado representante. O programa deve pedir o
representante atual e o novo representante e buscar todos os clientes que possuam
o representante atual. � medida que voc� l� os clientes, voc� deve mostrar o
n�mero e nome do cliente, associar o novo representante e mostr�-lo.(Dica: Use duas vari�veis, uma para o representante atual e outra para o novo.
Lembre-se de usar UPDATE para entrar com os valores nas vari�veis).*/


DEF VAR c-rep-new AS CHAR FORMAT "k(3)" LABEL "representante novo".
DEF VAR c-rep-old AS CHAR FORMAT "k(3)" LABEL "representante velho".
UPDATE c-rep-old
       c-rep-new
       WITH SIDE-LABEL.
FOR EACH customer WHERE customer.salesrep = c-rep-old:
    ASSIGN customer.salesrep = c-rep-new.
    PAUSE 1.
    DISPLAY customer.salesrep customer.custnum NAME.
END.
