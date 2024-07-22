/* Mais �ndices - �ndices... */

/* Voc� pode definir v�rios �ndices para cada tabela tempor�ria. Se voc� precisar 
deles, defina-os. Basicamente,um �ndice que corresponda � sua consulta e/ou ordem
de classifica��o ajudar� no desempenho! */


DEFINE TEMP-TABLE ttWithIndex NO-UNDO
    FIELD field1 AS INTEGER
    FIELD field2 AS CHARACTER
    FIELD field3 AS LOGICAL
    INDEX field1 field1.

DEFINE TEMP-TABLE ttWithoutIndex NO-UNDO
    FIELD field1 AS INTEGER
    FIELD field2 AS CHARACTER
    FIELD field3 AS LOGICAL.

DEFINE VARIABLE i              AS INTEGER     NO-UNDO.
DEFINE VARIABLE iWithCreate    AS INTEGER     NO-UNDO.
DEFINE VARIABLE iWithFind      AS INTEGER     NO-UNDO.
DEFINE VARIABLE iWithoutCreate AS INTEGER     NO-UNDO.
DEFINE VARIABLE iWithoutFind   AS INTEGER     NO-UNDO.

ETIME(TRUE).
DO i = 1 TO 1000:
    CREATE ttWithIndex.
    ttWithIndex.field1 = i.
END.
iWithCreate = ETIME.

ETIME(TRUE).
DO i = 1 TO 1000:
    CREATE ttWithoutIndex.
    ttWithoutIndex.field1 = i.
END.
iWithoutCreate = ETIME.

RELEASE ttWithIndex.
RELEASE ttWithoutIndex.

ETIME(TRUE).
DO i = 1 TO 1000:
    FIND FIRST ttWithIndex WHERE ttWithIndex.field1 = i NO-ERROR.
END.
iWithFind = ETIME.

ETIME(TRUE).
DO i = 1 TO 1000:
    FIND FIRST ttWithoutIndex WHERE ttWithoutIndex.field1 = i NO-ERROR.
END.
iWithoutFind = ETIME.

MESSAGE 
    "With index took" iWithFind "ms to find and" iWithCreate "ms to create" SKIP 
    "Without index took" iWithoutFind "ms to find and" iWithoutCreate "ms to create"
    VIEW-AS ALERT-BOX.
	
	
/* A pesquisa com �ndice foi aproximadamente 70 vezes mais r�pida em compara��o 
com nenhum �ndice! � claro que esta � apenas uma execu��o, portanto n�o � uma 
prova cient�fica, mas a configura��o do seu �ndice ter� impacto. */


