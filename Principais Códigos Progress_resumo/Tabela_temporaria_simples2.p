/* Definindo uma tabela tempor�ria simples */

/* Esta � a defini��o de um TEMP-TABLE ttTempTable nomeado com tr�s campos.NO-UNDO
indica que nenhum tratamento de desfazer � necess�rio (geralmente � isso que voc� 
deseja fazer, a menos que realmente precise do contr�rio). */


DEFINE TEMP-TABLE ttTempTable NO-UNDO
    FIELD field1 AS INTEGER
    FIELD field2 AS CHARACTER
    FIELD field3 AS LOGICAL.
