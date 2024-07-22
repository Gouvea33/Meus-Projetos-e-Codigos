/* 25 � Escreva um programa l-updrep.p para adicionar ou alterar registros da 
tabela de representante. Este programa dever� utilizar tr�s frames:
a) Para solicitar o c�digo do representante
b) Para modificar as informa��es do representante
c) Para perguntar por outro representante
Use o comando REPEAT para permitir a altera��o de diversos representantes. Obs:
O programa n�o deve permitir alterar o c�digo do representante.*/


DEFINE VARIABLE l-outro-rep AS LOGICAL INITIAL YES LABEL
  "Incluir/Modifica outro representante?".
REPEAT:
   PROMPT-FOR salesrep.salesRep WITH FRAME get-frame.
   FIND salesrep WHERE salesrep.salesRep = INPUT salesRep NO-ERROR.
   IF NOT AVAILABLE salesrep THEN DO:
   CREATE salesrep.
   ASSIGN INPUT salesRep.
   MESSAGE "Novo representante criado!".
   END.
   UPDATE salesrep EXCEPT salesrep.salesRep
          WITH FRAME upd-frame 2 COLUMN.
   UPDATE l-outro-rep WITH FRAME another-frame.
   IF l-outro-rep THEN
      NEXT.
   ELSE
      LEAVE.
       
END.
