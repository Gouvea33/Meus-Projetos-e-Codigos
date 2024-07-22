// Encontrar e bloquear registros 

/* Sempre que voc� usa FIND para gravar um registro, voc� pode adquirir um bloqueio 
dele.

NO-LOCK: Usado para opera��es somente leitura. Se voc� fizer isso, FIND <record> 
NO-LOCKn�o poder� de forma alguma modificar o registro. */

FIND FIRST Customer NO-LOCK NO-ERROR.

/* EXCLUSIVE-LOCK: Usado para atualiza��es e exclus�es. Se voc� fizer isso, voc� 
ser� o "propriet�rio" do registro e ningu�m mais poder� modific�-lo ou exclu�-lo 
at� que voc� termine. Eles podem l�-lo (sem bloqueio), desde que voc� n�o o tenha 
exclu�do.*/

FIND FIRST Customer EXCLUSIVE-LOCK NO-ERROR.

// SHARE-LOCK: Evite a todo custo. Isso causar� uma dor de cabe�a louca.

FIND FIRST Customer EXCLUSIVE-LOCK NO-ERROR. //Do this instead.

/*ATUALIZANDO sua fechadura de NO-LOCK para EXCLUSIVE-LOCK

Voc� pode facilmente passar de a NO-LOCKpara an EXCLUSIVE-LOCKse surgir a 
necessidade de modificar um registro. */

FIND FIRST Customer NO-LOCK NO-ERROR. 
// Some code goes here
// Now we shall modify
FIND CURRENT Customer EXCLUSIVE-LOCK NO-ERROR.

// Voc� tamb�m pode ir de EXCLUSIVE-LOCK para NO-LOCK.
