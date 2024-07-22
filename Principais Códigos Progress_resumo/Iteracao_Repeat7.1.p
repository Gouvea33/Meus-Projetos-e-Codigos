/* Para sair do loop você pode usar a LEAVE palavra-chave. Com ou sem etiqueta. Sem um rótulo LEAVE sempre afetará o 
loop atual. Com um nome você pode especificar qual loop deve ser feito LEAVE. */

/* Without a label */

/*REPEAT:
  //Do stuff
  IF TRUE THEN LEAVE.
END.*/

/* With a label */

/* loopLabel:

REPEAT:
  //Do stuff
  IF <somecondition> THEN LEAVE loopLabel.
END.*/

/* Two nested REPEATS */


DEFINE VARIABLE i AS INTEGER   NO-UNDO.
loopLabelOne:
REPEAT:
    loopLabelTwo:
    REPEAT:
        i = i + 1.
        IF RANDOM(1,100) = 1  THEN LEAVE loopLabelTwo.
        IF RANDOM(1,100) = 1  THEN LEAVE loopLabelOne.
    END.
    IF RANDOM(1,100) = 1  THEN LEAVE loopLabelOne.
END.
DISPLAY i.
