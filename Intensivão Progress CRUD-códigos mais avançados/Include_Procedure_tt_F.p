{Banco/tt-customer.i}

/*CREATE tt-param.
ASSIGN
       tt-param.cust-num-ini = 0
       tt-param.cust-num-fim = 999999999
       tt-param.name-ini     = ""
       tt-param.name-fim     = "ZZZZZZZZZZZZ".

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

*/

   MESSAGE "Executei persistente"
       VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.

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
