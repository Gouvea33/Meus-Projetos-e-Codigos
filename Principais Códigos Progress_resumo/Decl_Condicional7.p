/* Na IF THEN ELSE declara��o, o resultado pode ser uma �nica declara��o. */

DEFINE VARIABLE i AS INTEGER     NO-UNDO.

IF i = 0 THEN
    MESSAGE "Zero".
ELSE 
    MESSAGE "Something else".
