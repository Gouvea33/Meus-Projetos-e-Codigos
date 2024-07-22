// Na verdade, partes da sintaxe não são necessárias:

/* RETURNS isn't required, INPUT isn't required on INPUT-parameters */
FUNCTION isTheLetterB LOGICAL (pcString AS CHARACTER):
  IF pcString = "B" THEN 
    RETURN TRUE.
  ELSE 
    RETURN FALSE.
/* END FUNCTION can be replaced with END */
END.
