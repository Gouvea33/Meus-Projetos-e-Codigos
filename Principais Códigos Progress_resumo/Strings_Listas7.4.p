/* LOOKUP - verifica uma lista para uma entrada específica. Retorna sua entrada.

Se a string não estiver presente na lista, a pesquisa retornará 0

PROC(string, lista [, delimitador])*/


DEFINE VARIABLE cList AS CHARACTER   NO-UNDO.

cList = "Hello,nice,world!".

MESSAGE LOOKUP("nice", cList) VIEW-AS ALERT-BOX. //2
MESSAGE LOOKUP("cruel", cList) VIEW-AS ALERT-BOX. //0
