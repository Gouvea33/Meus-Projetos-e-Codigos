// Programa: Programa1.p
// Objetivo: Treinamento Progress 4GL
// Empresa: Insti
// Desenvolvedor: Cássio Gouvêa Pereira
// Criação: 09/07/2024
// Histórico de Manutenção ----->
// Recurso  / Data      /Chamado/Projeto /Descrição do Chamado
// Felipe   22/04/2021     4556           Correção da busca do centro e trabalho
// André    03/09/2021     7890           Ajuste no cálculo do refugo

    //SESSION:DEBUG-ALERT = TRUE.

DEFINE VARIABLE i AS INTEGER   NO-UNDO.
DEFINE VARIABLE i-erro AS INTEGER   NO-UNDO.

//Todo: Criar tt-log.

PROCEDURE pi-cria-customer:

    DEFINE INPUT PARAMETER p-custnum   AS INTEGER NO-UNDO.
    DEFINE INPUT PARAMETER p-cust-name AS CHARACTER NO-UNDO.
    
    DEFINE VARIABLE v-hprog            AS HANDLE NO-UNDO.
    DEFINE VARIABLE l-ok               AS LOGICAL NO-UNDO.
    
    
    DO TRANSACTION ON ERROR UNDO,THROW:
       FIND FIRST customer EXCLUSIVE-LOCK
            WHERE customer.CustNum = p-custnum NO-ERROR NO-WAIT.
            
       IF LOCKED(customer) THEN DO:
       
          /*MESSAGE "Registro está U Lock"
              VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.*/
       UNDO,THROW NEW PROGRESS.lang.AppError("Registro na tabela customer está em lock",550).
       //UNDO,RETURN "NOK".    
       
       END.
       
       ELSE IF NOT AVAIL customer THEN DO:
       
            CREATE customer.
            ASSIGN customer.CustNum = p-custnum.
           
       END.
       
       ASSIGN customer.name = p-cust-name.
       
       //Todo: gravar log de sucesso;
       
       
       CATCH verropro AS PROGRESS.Lang.ERROR:
       
       
           DO i-erro = 1 TO verropro:NumMessages:
           
           
              //Todo: gravar log de erro;
              
              MESSAGE "Ocorreram erros:"
                      STRING(verropro:GetMessageNum(i-erro)) + " - " + verropro:GetMessage(i-erro)
                  VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
          
           END.
           
           UNDO, RETURN "NOK".
           
        END CATCH.
        
        FINALLY:
        
            RELEASE customer.
            IF VALID-HANDLE(v-hprog) THEN DO:
            
                DELETE PROCEDURE v-hprog.
                v-hprog = ?.
            
            END.
            IF i-erro > 0 THEN RETURN 'NOK':U. ELSE RETURN 'OK':U.
            
        
        END FINALLY.
        
     END. // transaction
      
      
END PROCEDURE.
       

RETURN "OK".
       
       
       
       
       
       
       
       
