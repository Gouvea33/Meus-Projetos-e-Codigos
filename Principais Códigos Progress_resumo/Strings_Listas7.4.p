/* LOOKUP - verifica uma lista para uma entrada espec�fica. Retorna sua entrada.

Se a string n�o estiver presente na lista, a pesquisa retornar� 0

PROC(string, lista [, delimitador])*/


DEFINE VARIABLE cList AS CHARACTER   NO-UNDO.

cList = "Hello,nice,world!".

MESSAGE LOOKUP("nice", cList) VIEW-AS ALERT-BOX. //2
MESSAGE LOOKUP("cruel", cList) VIEW-AS ALERT-BOX. //0
