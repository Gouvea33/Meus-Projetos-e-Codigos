/* Declaração find */

//Disponibilidade e escopo

/* A FIND instrução é usada para recuperar um único registro de uma única tabela. 
Possui algumas limitações em comparação com FOR ou QUERY, mas é uma instrução 
simples e prática para acesso rápido aos registros.*/

/* A última descoberta é sempre aquela contra a qual a verificação de 
disponibilidade funcionará - uma descoberta malsucedida tornará AVAILABLE o 
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

