/* Na IF THEN ELSE declaração, o resultado pode ser uma única declaração. */

DEFINE VARIABLE i AS INTEGER     NO-UNDO.

IF i = 0 THEN
    MESSAGE "Zero".
ELSE 
    MESSAGE "Something else".
