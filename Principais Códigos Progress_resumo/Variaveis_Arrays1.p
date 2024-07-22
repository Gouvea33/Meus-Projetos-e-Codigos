/* Variáveis */

/* Progress ABL é digitado estaticamente.As variáveis precisam ser declaradas e 
o tipo de dados não pode ser alterado durante o tempo de execução. */

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

// Progress suporta arrays unidimensionais, mas eles são chamados de EXTENTS.


/* Define a character array with the length 5, and display it's length */

/* Posições individuais na matriz são acessadas usando colchetes "padrão" estilo
c. Mas o índice começa em 1. O tamanho máximo é 28.000.*/

// O índice 0 gerará um erro


DEFINE VARIABLE a AS CHARACTER EXTENT 5 NO-UNDO.
DISPLAY EXTENT(a).

a[1] = "A".
a[2] = "B".
a[3] = "C".
a[4] = "D".  
a[5] = "E".

DISPLAY a[5].






