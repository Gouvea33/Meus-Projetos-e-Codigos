/* Passando para arquivos de programa */

/* Voc� passa tabelas tempor�rias para e de outros programas.p da mesma forma que
as passa para outros procedimentos.A �nica diferen�a � que tanto o programa 
chamador quanto o programa chamado devem ter a mesma declara��o de tabela 
tempor�ria.Uma maneira f�cil � armazenar o programa da tabela tempor�ria em um 
terceiro arquivo - um include que � usado em ambos os programas.

Incluir arquivo contendo a defini��o da tabela tempor�ria: 
/* ttFile.i */ DEFINE TEMP-TABLE ttFile NO-UNDO FIELD fName AS CHARACTER FORMAT 
"x(20)" FIELD isADirectory AS LOGICAL.

Programa que verifica todos os arquivos em uma tabela tempor�ria. Eles s�o 
diret�rios? */


/* checkFiles.p */
{ttFile.i}

DEFINE INPUT-OUTPUT PARAMETER TABLE FOR ttFile.

FOR EACH ttFile:
    FILE-INFO:FILE-NAME = ttFile.fName.

    IF FILE-INFO:FILE-TYPE BEGINS "D" THEN
        ttFile.isADirectory = TRUE.
END.


