/* TABELA TEMPORÁRIA */

/* Este TEMP-TABLE é um recurso muito poderoso do Progress ABL. É uma tabela 
temporária na memória (pelo menos na maior parte) que pode ser usada para escrever
lógica complexa. Podem ser usados como parâmetros de entrada/saída para 
procedimentos, funções e outros programas. Uma ou mais tabelas temporárias podem 
constituir a base de um DATASET (geralmente chamado de ProDataset).

Quase tudo que pode ser feito com uma tabela de banco de dados Progress nativa pode
ser feito com uma tabela temporária.*/


/* Uma tabela temporária com um índice */

/* As tabelas temporárias podem (e devem) ser criadas com índices se você planeja 
executar consultas nelas.

Esta tabela possui um índice (índice1) contendo um campo (campo1). Este índice é 
primário e único (o que significa que dois registros não podem ter o mesmo conteúdo
do campo1). */


DEFINE TEMP-TABLE ttTempTable NO-UNDO
    FIELD field1 AS INTEGER
    FIELD field2 AS CHARACTER
    FIELD field3 AS LOGICAL
    INDEX index1 IS PRIMARY UNIQUE field1 .
