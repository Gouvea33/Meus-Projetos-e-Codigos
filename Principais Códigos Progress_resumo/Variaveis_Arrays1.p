/* Vari�veis */

/* Progress ABL � digitado estaticamente.As vari�veis precisam ser declaradas e 
o tipo de dados n�o pode ser alterado durante o tempo de execu��o. */

// Sintaxe

/* DEFINE VARIABLE i AS INT64 INITIAL -200 NO-UNDO. 
//A 64-bit integer initialized to -200

DEFINE VARIABLE l AS LOGICAL NO-UNDO. 
//A logical variable named l

DEFINE VARIABLE c AS CHARACTER NO-UNDO CASE-SENSITIVE. 
//A case sensitive ('a' <> 'A') variable.

DEFINE VARIABLE dt AS DATE INTIAL TODAY NO-UNDO. 
//A date variable set to todays date.

DEFINE VARIABLE a AS CHARACTER EXTENT 5 NO-UNDO. 
//An character array with length = 5

DEFINE VARIABLE j AS INTEGER EXTENT NO-UNDO. 
//An extent without a set length

DEFINE VARIABLE b AS DATETIME LABEL "Departure time". 
//A variable with a label */



/* Matrizes - definindo e acessando */

// Progress suporta arrays unidimensionais, mas eles s�o chamados de EXTENTS.


/* Define a character array with the length 5, and display it's length */

/* Posi��es individuais na matriz s�o acessadas usando colchetes "padr�o" estilo
c. Mas o �ndice come�a em 1. O tamanho m�ximo � 28.000.*/

// O �ndice 0 gerar� um erro


DEFINE VARIABLE a AS CHARACTER EXTENT 5 NO-UNDO.
DISPLAY EXTENT(a).

a[1] = "A".
a[2] = "B".
a[3] = "C".
a[4] = "D".  
a[5] = "E".

DISPLAY a[5].






