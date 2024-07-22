//Um registro encontrado em “principal” estará disponível em qualquer procedimento.

DEFINE TEMP-TABLE tt NO-UNDO
    FIELD nr AS INTEGER.

PROCEDURE av:
    DISPLAY AVAILABLE tt.

    IF AVAILABLE tt THEN DO:
        DISPLAY tt.nr.
    END.
END PROCEDURE.

CREATE tt.
tt.nr = 1.
        
RUN av. // yes. tt.nr = 1

CREATE tt.
tt.nr = 2.

RUN av. // yes. tt.nr = 2

FIND FIRST tt WHERE tt.nr = 4 NO-ERROR.

RUN av. // no (and no tt.nr displayed)

