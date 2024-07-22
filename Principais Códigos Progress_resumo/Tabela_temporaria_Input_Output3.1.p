// Entrada e saída de uma tabela temporária:


DEFINE TEMP-TABLE ttCalculate NO-UNDO
    FIELD num1     AS INTEGER
    FIELD num2     AS INTEGER
    FIELD response AS DECIMAL.

PROCEDURE pythagoras:
    DEFINE INPUT-OUTPUT PARAMETER TABLE FOR ttCalculate.

    FOR EACH ttCalculate:
        ttCalculate.response = SQRT( EXP(num1, 2) + EXP(num2, 2)).
    END.

END PROCEDURE.

CREATE ttCalculate.
ASSIGN ttCalculate.num1 = 3
       ttCalculate.num2 = 4.

CREATE ttCalculate.
ASSIGN ttCalculate.num1 = 6
       ttCalculate.num2 = 8.

CREATE ttCalculate.
ASSIGN ttCalculate.num1 = 12
       ttCalculate.num2 = 16.

/* Call the procedure */
RUN pythagoras ( INPUT-OUTPUT  TABLE ttCalculate ).

FOR EACH ttCalculate:
    DISPLAY ttCalculate.
END.
