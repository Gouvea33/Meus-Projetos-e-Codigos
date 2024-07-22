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
  FIELD Terms        AS CHARACTER   FORMAT "x(20)" INITIAL "Net30" LABEL "Terms"
  FIELD tp-crud      AS INT. //1 - inclusão, 2 - alteração.

DEFINE TEMP-TABLE tt-param NO-UNDO
  FIELD cust-num-ini AS INT
  FIELD cust-num-fim AS INT
  FIELD name-ini     LIKE customer.NAME
  FIELD name-fim     LIKE customer.NAME.

CREATE tt-param.
ASSIGN
       cust-num-ini    = 0
       cust-num-fim    = 999999999
       name-ini        = ""
       name-fim        = "ZZZZZZZZZZZZ".

RUN pi-consulta-customer (INPUT TABLE tt-param,
                          OUTPUT TABLE tt-customer).

MESSAGE RETURN-VALUE.

IF RETURN-VALUE <> "OK" THEN DO:
    MESSAGE "Ocorreram erros ao realizar consulta"
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    
    RETURN "NOK".

END.

FOR EACH tt-customer:
    DISPLAY tt-customer WITH 1 COL WIDTH 320.
END.

PROCEDURE pi-tt-cria-customer:
    DEFINE INPUT PARAMETER TABLE FOR tt-customer.
    DEFINE OUTPUT PARAMETER c-ret AS CHARACTER  NO-UNDO.

    DEFINE VARIABLE ix AS INTEGER   NO-UNDO.
    DEFINE VARIABLE next-custnum AS INTEGER NO-UNDO.

    FIND FIRST tt-customer NO-ERROR.
    IF NOT AVAILABLE tt-customer THEN DO:
        c-ret = "Registros da tabela tt-customer estão zerados".
        MESSAGE c-ret SKIP
                "Favor informar registros válidos"
            VIEW-AS ALERT-BOX ERROR BUTTONS OK.
        RETURN.
    END.

    /* Obter o próximo valor para CustNum */
    FIND LAST customer NO-LOCK NO-ERROR.
    IF AVAILABLE customer THEN
        next-custnum = customer.custnum + 1.
    ELSE
        next-custnum = 1.

    FOR EACH tt-customer:
        IF tt-customer.tp-crud = 1 THEN DO:
            CREATE customer.
            ASSIGN customer.custnum = NEXT-VALUE(nextcustnum) NO-ERROR. //Incrementa o id com sequencial + 1
            BUFFER-COPY tt-customer TO customer.
            
        END.
        ELSE IF tt-customer.tp-crud = 2 THEN DO:
            FIND customer WHERE customer.custnum = tt-customer.custnum EXCLUSIVE-LOCK NO-ERROR.
            IF AVAILABLE customer THEN
                BUFFER-COPY tt-customer EXCEPT tt-customer.custnum TO customer NO-ERROR.
            ELSE DO:
                c-ret = "Cliente não encontrado: " + STRING(tt-customer.custnum).
                NEXT.
            END.
        END.
        ELSE DO:
            c-ret = "Tipo de Crud Inválido para o registro " + tt-customer.NAME.
            
            //LEAVE
            NEXT.
        END.

        IF ERROR-STATUS:ERROR OR ERROR-STATUS:NUM-MESSAGES > 0 THEN DO:
            DO ix = 1 TO ERROR-STATUS:NUM-MESSAGES:
                MESSAGE ERROR-STATUS:GET-NUMBER(ix) ERROR-STATUS:GET-MESSAGE(ix) VIEW-AS ALERT-BOX.
            END.
        END.
    END.

    c-ret = "OK".
    RETURN.
END.

PROCEDURE pi-cria-customer:
    DEFINE INPUT PARAMETER p-cust-num AS INTEGER NO-UNDO.
    DEFINE INPUT PARAMETER p-cust-name AS CHARACTER NO-UNDO.
    DEFINE OUTPUT PARAMETER c-ret AS CHARACTER NO-UNDO.

    DEFINE VARIABLE ix AS INTEGER NO-UNDO.

    IF p-cust-num <= 0 THEN DO:
        c-ret = "Código do Cliente não pode ser menor ou igual a 0".
        MESSAGE c-ret SKIP
                "Favor informar um Cliente Válido"
           VIEW-AS ALERT-BOX ERROR BUTTONS OK.
        RETURN.
    END.

    IF p-cust-name = "" OR LENGTH(p-cust-name) < 4 THEN DO:
        c-ret = "O nome do Cliente está incorreto".
        MESSAGE c-ret SKIP
                "Favor informar um nome de Cliente Válido"
           VIEW-AS ALERT-BOX ERROR BUTTONS OK.
        RETURN.
    END.

    FIND customer EXCLUSIVE-LOCK WHERE customer.custnum = p-cust-num NO-ERROR.
    IF NOT AVAILABLE customer  THEN DO:
        CREATE customer.
        ASSIGN customer.custnum = p-cust-num
               customer.NAME     = p-cust-name NO-ERROR.
    END.
    ELSE DO:
        ASSIGN customer.NAME = p-cust-name NO-ERROR.
    END.

    IF ERROR-STATUS:ERROR OR ERROR-STATUS:NUM-MESSAGES > 0 THEN DO:
        DO ix = 1 TO ERROR-STATUS:NUM-MESSAGES:
            MESSAGE ERROR-STATUS:GET-NUMBER(ix) ERROR-STATUS:GET-MESSAGE(ix) VIEW-AS ALERT-BOX.
        END.
    END.

    c-ret = "OK".
    RETURN.
END.

PROCEDURE pi-consulta-customer:
    DEFINE INPUT PARAMETER TABLE FOR tt-param.
    DEFINE OUTPUT PARAMETER TABLE FOR tt-customer.

    DEFINE VARIABLE ix AS INTEGER NO-UNDO.
    DEFINE VARIABLE c-ret AS CHARACTER NO-UNDO. /* Variável para capturar mensagens de retorno */

    //Validações iniciais
    
    
    FIND FIRST tt-param NO-ERROR.
    IF NOT AVAILABLE tt-param THEN DO:
        MESSAGE c-ret SKIP
                "Favor informar um registro Válido"
            VIEW-AS ALERT-BOX ERROR BUTTONS OK.
            
         RETURN "NOK".   
            
            
    END.

    EMPTY TEMP-TABLE tt-customer.
    
    /*FOR EACH tt-customer:
          DELETE tt-customer.
      END.*/

    FOR EACH customer NO-LOCK WHERE customer.custnum >= tt-param.cust-num-ini
                               AND customer.custnum <= tt-param.cust-num-fim
                               AND customer.NAME >= tt-param.name-ini
                               AND customer.NAME <= tt-param.name-fim:
        CREATE tt-customer.
        BUFFER-COPY customer TO tt-customer.
    END.

    IF NOT AVAILABLE tt-customer THEN DO:
        c-ret = "Nenhum cliente encontrado no intervalo especificado".
        RETURN "NOK".
    END.

    RETURN "OK".
END.

RETURN "OK".
