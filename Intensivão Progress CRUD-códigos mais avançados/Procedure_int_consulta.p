PROCEDURE pi-consulta-customer:

  DEFINE INPUT PARAMETER TABLE FOR tt-param.
  DEFINE OUTPUT PARAMETER TABLE FOR tt-customer.
  DEFINE VARIABLE c-ret AS CHARACTER NO-UNDO.
  
  DEFINE VARIABLE ix AS INTEGER NO-UNDO.
  
  
  //Validações iniciais
  
  FIND FIRST tt-param NO-ERROR.
  
  IF NOT AVAIL tt-param THEN DO:
     
     MESSAGE c-ret SKIP
             "Favor informar um nome de Cliente Válido"
         VIEW-AS ALERT-BOX ERROR BUTTONS OK.
         
         
         RETURN "NOK".
  END.

   EMPTY TEMP-TABLE tt-customer.
   
   /*FOR EACH tt-customer:
   
      DELETE tt-customer.
   END.*/ 
  
   FOR EACH customer NO-LOCK WHERE customer.custnum >= tt-param.cust-num-ini:
                               AND customer.custnum <= tt-param.cust-num-fim
                               AND customer.NAME >= tt-param.name-ini
                               AND customer.NAME <= tt-param.name-fim:
       CREATE tt-customer.
       BUFFER-COPY customer TO tt-customer.
       
                               
   END.
    
    RETURN "OK".
   
   END.
   
   RETURN "OK".
