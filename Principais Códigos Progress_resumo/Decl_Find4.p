// Encontrar e bloquear registros 

/* Sempre que você usa FIND para gravar um registro, você pode adquirir um bloqueio 
dele.

NO-LOCK: Usado para operações somente leitura. Se você fizer isso, FIND <record> 
NO-LOCKnão poderá de forma alguma modificar o registro. */

FIND FIRST Customer NO-LOCK NO-ERROR.

/* EXCLUSIVE-LOCK: Usado para atualizações e exclusões. Se você fizer isso, você 
será o "proprietário" do registro e ninguém mais poderá modificá-lo ou excluí-lo 
até que você termine. Eles podem lê-lo (sem bloqueio), desde que você não o tenha 
excluído.*/

FIND FIRST Customer EXCLUSIVE-LOCK NO-ERROR.

// SHARE-LOCK: Evite a todo custo. Isso causará uma dor de cabeça louca.

FIND FIRST Customer EXCLUSIVE-LOCK NO-ERROR. //Do this instead.

/*ATUALIZANDO sua fechadura de NO-LOCK para EXCLUSIVE-LOCK

Você pode facilmente passar de a NO-LOCKpara an EXCLUSIVE-LOCKse surgir a 
necessidade de modificar um registro. */

FIND FIRST Customer NO-LOCK NO-ERROR. 
// Some code goes here
// Now we shall modify
FIND CURRENT Customer EXCLUSIVE-LOCK NO-ERROR.

// Você também pode ir de EXCLUSIVE-LOCK para NO-LOCK.
