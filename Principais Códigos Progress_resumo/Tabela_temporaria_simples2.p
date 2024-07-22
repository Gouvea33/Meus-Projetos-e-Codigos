/* Definindo uma tabela temporária simples */

/* Esta é a definição de um TEMP-TABLE ttTempTable nomeado com três campos.NO-UNDO
indica que nenhum tratamento de desfazer é necessário (geralmente é isso que você 
deseja fazer, a menos que realmente precise do contrário). */


DEFINE TEMP-TABLE ttTempTable NO-UNDO
    FIELD field1 AS INTEGER
    FIELD field2 AS CHARACTER
    FIELD field3 AS LOGICAL.
