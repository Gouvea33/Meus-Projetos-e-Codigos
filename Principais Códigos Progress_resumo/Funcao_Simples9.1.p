// Na verdade, partes da sintaxe n�o s�o necess�rias:

/* RETURNS isn't required, INPUT isn't required on INPUT-parameters */
FUNCTION isTheLetterB LOGICAL (pcString AS CHARACTER):
  IF pcString = "B" THEN 
    RETURN TRUE.
  ELSE 
    RETURN FALSE.
/* END FUNCTION can be replaced with END */
END.
