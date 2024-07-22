/* Passando para arquivos de programa */

/* Você passa tabelas temporárias para e de outros programas.p da mesma forma que
as passa para outros procedimentos.A única diferença é que tanto o programa 
chamador quanto o programa chamado devem ter a mesma declaração de tabela 
temporária.Uma maneira fácil é armazenar o programa da tabela temporária em um 
terceiro arquivo - um include que é usado em ambos os programas.

Incluir arquivo contendo a definição da tabela temporária: 
/* ttFile.i */ DEFINE TEMP-TABLE ttFile NO-UNDO FIELD fName AS CHARACTER FORMAT 
"x(20)" FIELD isADirectory AS LOGICAL.

Programa que verifica todos os arquivos em uma tabela temporária. Eles são 
diretórios? */


/* checkFiles.p */
{ttFile.i}

DEFINE INPUT-OUTPUT PARAMETER TABLE FOR ttFile.

FOR EACH ttFile:
    FILE-INFO:FILE-NAME = ttFile.fName.

    IF FILE-INFO:FILE-TYPE BEGINS "D" THEN
        ttFile.isADirectory = TRUE.
END.


