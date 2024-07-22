/* Usando a palavra-chave LIKE */


/* Usando LIKE você pode basear a definição de sua variável em outra variável ou 
campo em um banco de dados ou tabela temporária.

Definir uma variável LIKE em um campo do banco de dados exige que o banco de dados 
esteja sempre conectado. Isso pode nem sempre ser o que você deseja. */


DEFINE VARIABLE i AS INTEGER NO-UNDO LABEL "Nr" FORMAT "99999".
/* Define a variable with the same properties as "i" */
DEFINE VARIABLE j LIKE i.

/* Define a variable based on Customer.Custnum from the sports2000 database but 
override the label-definition */    
DEFINE VARIABLE k LIKE Customer.Custnum LABEL "Client".
