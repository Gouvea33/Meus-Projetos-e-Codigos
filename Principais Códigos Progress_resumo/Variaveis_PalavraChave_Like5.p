/* Usando a palavra-chave LIKE */


/* Usando LIKE voc� pode basear a defini��o de sua vari�vel em outra vari�vel ou 
campo em um banco de dados ou tabela tempor�ria.

Definir uma vari�vel LIKE em um campo do banco de dados exige que o banco de dados 
esteja sempre conectado. Isso pode nem sempre ser o que voc� deseja. */


DEFINE VARIABLE i AS INTEGER NO-UNDO LABEL "Nr" FORMAT "99999".
/* Define a variable with the same properties as "i" */
DEFINE VARIABLE j LIKE i.

/* Define a variable based on Customer.Custnum from the sports2000 database but 
override the label-definition */    
DEFINE VARIABLE k LIKE Customer.Custnum LABEL "Client".
