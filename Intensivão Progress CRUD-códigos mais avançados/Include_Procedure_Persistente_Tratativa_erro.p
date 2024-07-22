BLOCK-LEVEL ON ERROR UNDO, THROW.
{Banco/tt-customer.i}

DEFINE VARIABLE i-error AS INTEGER   NO-UNDO.

 //SESSION:DEBUG-ALERT = TRUE.

DEFINE VARIABLE h-prog  AS HANDLE      NO-UNDO.

CREATE tt-param.
ASSIGN
       tt-param.cust-num-ini   = 0
       tt-param.cust-num-fim   = 999999999
       tt-param.name-ini       = ""
       tt-param.name-fim       = "ZZZZZZZZZZZZ".
       

/*MESSAGE h-prog: HANDLE h-prog: NAME 
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.*/
    
IF NOT VALID-HANDLE(h-prog) THEN
    RUN Banco/Include_Procedure_tt_F.p PERSISTENT SET h-prog.   
    
IF VALID-HANDLE(h-prog) THEN 
    
RUN pi-consulta-customer IN h-prog (INPUT TABLE tt-param,
                                    OUTPUT TABLE tt-customer).
                                    
DELETE PROCEDURE h-prog.


IF RETURN-VALUE <> "OK" THEN DO:
    MESSAGE "Ocorreram erros ao realizar consulta"
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    
    RETURN "NOK".

END.

FOR EACH tt-customer:
    
    DISPLAY tt-customer WITH 1 COL WIDTH 320.

END.

CATCH verropro AS PROGRESS.lang.ERROR:


    DO i-erro = 1 TO verropro:NumMessages:
    
       //todo:gravar log de erro.
       
       MESSAGE "Ocorreram erros:"
                STRING(verropro:GetMessageNum(i-erro)) + " - " + verropro:GetMessage(i-erro)
           VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    
    END.
    
    UNDO, RETURN "NOK".
    
END CATCH.

FINALLY:

MESSAGE "Finally"
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.

   RELEASE customer.
   IF VALID-HANDLE(h-prog) THEN DO:
   
      DELETE PROCEDURE h-prog.
      h-prog = ?.
       
   END.
   
   IF i-erro > 0 THEN RETURN 'NOK':U. 
   ELSE RETURN 'OK':U.
   
       
END FINALLY.

 
