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


/* DEFINE TEMP-TABLE tt2-customer NO-UNDO LIKE customer.*/



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
