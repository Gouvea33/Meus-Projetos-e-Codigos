/* Declara��o find */

//Disponibilidade e escopo

/* A FIND instru��o � usada para recuperar um �nico registro de uma �nica tabela. 
Possui algumas limita��es em compara��o com FOR ou QUERY, mas � uma instru��o 
simples e pr�tica para acesso r�pido aos registros.*/

/* A �ltima descoberta � sempre aquela contra a qual a verifica��o de 
disponibilidade funcionar� - uma descoberta malsucedida tornar� AVAILABLE o 
retorno falso.*/

DEFINE TEMP-TABLE tt NO-UNDO
    FIELD nr AS INTEGER.

CREATE tt.
tt.nr = 1.

CREATE tt.
tt.nr = 2.

CREATE tt.
tt.nr = 3.

DISPLAY AVAILABL tt. // yes (tt with nr = 3 is still available)

FIND FIRST tt WHERE tt.nr = 1 NO-ERROR.
DISPLAY AVAILABLE tt. //yes

FIND FIRST tt WHERE tt.nr = 2 NO-ERROR.
DISPLAY AVAILABLE tt. //yes

FIND FIRST tt WHERE tt.nr = 3 NO-ERROR.
DISPLAY AVAILABLE tt. //yes

FIND FIRST tt WHERE tt.nr = 4 NO-ERROR.
DISPLAY AVAILABLE tt. //no

