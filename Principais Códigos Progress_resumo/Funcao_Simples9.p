/* Função simples */


/* This function returns TRUE if input is the letter "b" and false otherwise */
FUNCTION isTheLetterB RETURNS LOGICAL (INPUT pcString AS CHARACTER):
  IF pcString = "B" THEN 
    RETURN TRUE.
  ELSE 
    RETURN FALSE.
END FUNCTION.

/* Calling the function with "b" as input - TRUE expected */
DISPLAY isTheLetterB("b").

/* Calling the function with "r" as input - FALSE expected */
DISPLAY isTheLetterB("r").
