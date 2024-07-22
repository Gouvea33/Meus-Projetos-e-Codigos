/* Entrada e sa�da de tabelas tempor�rias */ 

/* � muito simples passar tabelas tempor�rias para dentro e fora de programas, 
procedimentos e fun��es.

Isso pode ser �til se voc� quiser que um procedimento processe um n�mero maior 
de dados do que voc� pode armazenar facilmente em uma string ou similar.Voc� 
pode passar tabelas tempor�rias como INPUT,OUTPUT e INPUT-OUTPUT data.

Inserindo uma tabela tempor�ria e gerando outra: */	


DEFINE TEMP-TABLE ttRequest NO-UNDO
    FIELD fieldA AS CHARACTER
    FIELD fieldB AS CHARACTER.

/* Define a temp-table with the same fields and indices */
DEFINE TEMP-TABLE ttResponse NO-UNDO LIKE ttRequest.

/* A procedure that simply swap the values of fieldA and fieldB */
PROCEDURE swapFields:
    DEFINE INPUT  PARAMETER TABLE FOR ttRequest.
    DEFINE OUTPUT PARAMETER TABLE FOR ttResponse.

    FOR EACH ttRequest:
        CREATE ttResponse.
        ASSIGN 
            ttResponse.fieldA = ttRequest.fieldB
            ttResponse.fieldB = ttRequest.fieldA.
    END.
END PROCEDURE.

CREATE ttRequest.
ASSIGN ttRequest.fieldA = "A"
       ttRequest.fieldB = "B".

CREATE ttRequest.
ASSIGN ttRequest.fieldA = "B"
       ttRequest.fieldB = "C".

CREATE ttRequest.
ASSIGN ttRequest.fieldA = "C"
       ttRequest.fieldB = "D".

/* Call the procedure */
RUN swapFields ( INPUT  TABLE ttRequest
               , OUTPUT TABLE ttResponse).

FOR EACH ttResponse:
    DISPLAY ttResponse.
END.

