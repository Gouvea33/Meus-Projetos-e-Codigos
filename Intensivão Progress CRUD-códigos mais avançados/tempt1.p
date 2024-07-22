DEFINE TEMP-TABLE tt-customer NO-UNDO
  
  FIELD Address      AS CHARACTER   FORMAT "x(35)" LABEL "Address"
  FIELD Address2     AS CHARACTER   FORMAT "x(35)" LABEL "Address2"
  FIELD Balance      AS DECIMAL     DECIMALS 4 FORMAT "->,>>>,>>9.99" LABEL "Balance"
  FIELD City         AS CHARACTER   FORMAT "x(25)" LABEL "City"
  FIELD Comments     AS CHARACTER   FORMAT "x(80)" LABEL "Comments"
  FIELD Contact      AS CHARACTER   FORMAT "x(30)" LABEL "Contact"
  FIELD Country      AS CHARACTER   FORMAT "x(20)" INITIAL "USA" LABEL "Country"
  FIELD CreditLimit  AS DECIMAL     DECIMALS 2 FORMAT "->,>>>,>>9" INITIAL 1500 LABEL "Credit Limit"
  FIELD CustNum      AS INTEGER     FORMAT ">>>>9" LABEL "Cust Num"
  FIELD Discount     AS INTEGER     FORMAT ">>9%" LABEL "Discount"
  FIELD EmailAddress AS CHARACTER   FORMAT "x(50)" LABEL "Email"
  FIELD Fax          AS CHARACTER   FORMAT "x(20)" LABEL "Fax"
  FIELD Name         AS CHARACTER   FORMAT "x(30)" LABEL "Name"
  FIELD Phone        AS CHARACTER   FORMAT "x(20)" LABEL "Phone"
  FIELD PostalCode   AS CHARACTER   FORMAT "x(10)" LABEL "Postal Code"
  FIELD SalesRep     AS CHARACTER   FORMAT "x(4)" LABEL "Sales Rep"
  FIELD State        AS CHARACTER   FORMAT "x(20)" LABEL "State"
  FIELD Terms        AS CHARACTER   FORMAT "x(20)" INITIAL "Net30" LABEL "Terms".
  FIELD tp-crud      AS INT. //1 - inclus�o, 2 - altera��o.

  
  /*DEFINE TEMP-TABLE tt2-customer NO-UNDO LIKE customer.*/


   DEFINE TEMP-TABLE tt-param NO-UNDO
       FIELD cust-num-ini AS INT
       FIELD cust-num-fim AS INT
       FIELD name-ini     LIKE customer.NAME
       FIELD name-fim     LIKE customer.NAME.
       
    PROCEDURE pi-tt-cria-customer:
    
    DEFINE INPUT PARAMETER TABLE FOR tt-customer.
    DEFINE OUTPUT PARAMETER c-ret AS CHARACTER   NO-UNDO.

    DEFINE VARIABLE ix AS INTEGER     NO-UNDO.
    
    FIND FIRST tt-customer NO-ERROR.
    IF NOT AVAIL tt-customer THEN DO:
       c-ret = "Registro da tabela tt-customer est� zerado".
       MESSAGE c-ret SKIP
                "Favor registros v�lidos"
           
          VIEW-AS ALERT-BOX ERROR BUTTONS OK.
       
       RETURN "NOK".
       
     END.
    
    FIND FIRST tt-customer NO-ERROR.
    IF NOT AVAIL tt-customer THEN DO:
       c-ret = "Registro da tabela tt-customer est� zerado".
       MESSAGE c-ret SKIP
                "Favor registros v�lidos"
           
          VIEW-AS ALERT-BOX ERROR BUTTONS OK.
       
       RETURN "NOK".
       
     END.
     
      FOR EACH tt-customer:
     
       /*FIND customer EXCLUSIVE-LOCK WHERE customer.custnum = tt-customer.custnum NO-ERROR.
         IF NOT AVAIL customer THEN DO:*/
       
      IF tt-customer.tp-crud = 1 THEN DO:
      
           CREATE customer.   
           BUFFER-COPY tt-customer TO customer ASSIGN customer.custnum = NEXT-VALUE(next-custnum) NO-ERROR. // incrementa o id com sequencial + 1 
       
      END.
    
      ELSE IF tt-customer.tp-crud = 2 THEN DO:
    
       BUFFER-COPY tt-customer EXCEPT tt-customer.custnum TO customer NO-ERROR.
    
      END.
      ELSE DO:
      
        c-ret = "Tipo de Crud Inv�lido para o registro" + tt-customer.NAME.
      
        NEXT.
        
      END.
      
   IF ERROR-STATUS:ERROR OR ERROR-STATUS:NUM-MESSAGES > 0 THEN DO:
         
         DO ix = 1 TO ERROR-STATUS:NUM-MESSAGES:
            MESSAGE ERROR-STATUS:GET-NUMBER(ix) ERROR-STATUS:GET-MESSAGE(ix) VIEW-AS ALERT-BOX.
         END.
   END.
     
     
     END.
    
    
     RETURN "OK".


END.
