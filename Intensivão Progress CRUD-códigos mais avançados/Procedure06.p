
PROCEDURE pi-cria-customer:
    
    DEFINE INPUT PARAMETER p-cust-num   AS INTEGER NO-UNDO.
    DEFINE INPUT  PARAMETER p-cust-name AS CHARACTER   NO-UNDO.
    DEFINE OUTPUT PARAMETER c-ret AS CHARACTER   NO-UNDO.

    DEFINE VARIABLE ix AS INTEGER   NO-UNDO.
    
    //Validações iniciais
    IF p-cust-num <= 0 THEN DO:
    
       c-ret = "Código do Cliente não pode ser menor ou igual a 0".
       MESSAGE c-ret SKIP
                "Favor informar um Cliente válido"
           
          VIEW-AS ALERT-BOX ERROR BUTTONS OK.
       
       RETURN "NOK". 
    
    END. 

    IF p-cust-name = "" OR LENGTH(p-cust-name) < 4 THEN DO:
       c-ret = "O nome do Cliente está incorreto".
       MESSAGE c-ret SKIP
                "Favor informar um nome de Cliente válido"
           
           VIEW-AS ALERT-BOX ERROR BUTTONS OK.
       
       RETURN "NOK".     
    END.
    
    FIND customer EXCLUSIVE-LOCK WHERE customer.custnum = p-cust-num NO-ERROR.
    
      IF NOT AVAIL customer THEN DO:
       CREATE customer.   
       ASSIGN customer.custnum = p-cust-num
              customer.NAME     = p-cust-name NO-ERROR.
      END.
    
     ELSE DO:
    
     ASSIGN customer.NAME       = p-cust-name NO-ERROR.
    
     END.
      
   IF ERROR-STATUS:ERROR OR ERROR-STATUS:NUM-MESSAGES > 0 THEN DO:
         
         DO ix = 1 TO ERROR-STATUS:NUM-MESSAGES:
        MESSAGE ERROR-STATUS:GET-NUMBER(ix) ERROR-STATUS:GET-MESSAGE(ix) VIEW-AS ALERT-BOX.
         END.
   END.



    RETURN "OK".


END.

