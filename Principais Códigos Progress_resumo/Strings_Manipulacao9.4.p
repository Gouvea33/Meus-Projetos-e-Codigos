/* Substring também pode ser usada para substituir uma parte de uma string. Use 
a mesma sintaxe, mas atribua essa substring: */ 



DEFINE VARIABLE cString AS CHARACTER NO-UNDO.

cString = "ABCDEFGH".
 
SUBSTRING(cString, 4, 2) = "XY". //Replaces position 4 and 5 with "XY" 

DISPLAY cString.
