/* Além disso, um registro encontrado em um procedimento ainda estará disponível 
após a saída desse procedimento.*/

DEFINE TEMP-TABLE tt NO-UNDO
    FIELD nr AS INTEGER.

PROCEDURE av:
    FIND FIRST tt WHERE tt.nr = 1.
END PROCEDURE.

CREATE tt.
tt.nr = 1.

CREATE tt.
tt.nr = 2.

DISPLAY AVAILABLE tt WITH FRAME x1. // yes.

IF AVAILABLE tt THEN DO:
    DISPLAY tt.nr WITH FRAME x1. //tt.nr = 2
END.

PAUSE.

RUN av. 

DISPLAY AVAILABLE tt WITH FRAME x2. // yes.

IF AVAILABLE tt THEN DO:
    DISPLAY tt.nr WITH FRAME x2. //tt.nr = 1
END.

