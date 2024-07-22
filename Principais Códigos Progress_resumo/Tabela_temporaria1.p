/* TABELA TEMPOR�RIA */

/* Este TEMP-TABLE � um recurso muito poderoso do Progress ABL. � uma tabela 
tempor�ria na mem�ria (pelo menos na maior parte) que pode ser usada para escrever
l�gica complexa. Podem ser usados como par�metros de entrada/sa�da para 
procedimentos, fun��es e outros programas. Uma ou mais tabelas tempor�rias podem 
constituir a base de um DATASET (geralmente chamado de ProDataset).

Quase tudo que pode ser feito com uma tabela de banco de dados Progress nativa pode
ser feito com uma tabela tempor�ria.*/


/* Uma tabela tempor�ria com um �ndice */

/* As tabelas tempor�rias podem (e devem) ser criadas com �ndices se voc� planeja 
executar consultas nelas.

Esta tabela possui um �ndice (�ndice1) contendo um campo (campo1). Este �ndice � 
prim�rio e �nico (o que significa que dois registros n�o podem ter o mesmo conte�do
do campo1). */


DEFINE TEMP-TABLE ttTempTable NO-UNDO
    FIELD field1 AS INTEGER
    FIELD field2 AS CHARACTER
    FIELD field3 AS LOGICAL
    INDEX index1 IS PRIMARY UNIQUE field1 .
