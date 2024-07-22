/* 24 � Escreva um programa l-buffer.p que mostre o c�digo, nome e cr�dito limite de
todos os clientes, classificado por cr�dito limite. O programa dever� tamb�m
mostrar uma coluna �Outro Cli�, que indica que existe outro cliente com o mesmo
limite de cr�dito. Dica: Utilize o comando BUFFER para ler outro cliente. Obs:
Garanta que o outro cliente que ele encontrar n�o seja o mesmo que ele est�
lendo).*/



DEF VAR l-tem-rep AS LOG FORMAT "Sim/N�o" NO-UNDO.
DEF BUFFER bcust FOR customer.
FOR EACH customer
     BY customer.creditlimit:
     FIND FIRST bcust WHERE
                bcust.creditlimit = customer.creditlimit AND
                bcust.custnum <> customer.custnum NO-ERROR.
     IF AVAIL bcust THEN
        ASSIGN l-tem-rep = YES.
     ELSE
        ASSIGN l-tem-rep = NO.
        ASSIGN l-tem-rep = AVAIL bcust.
     DISP customer.custnum
          customer.NAME
          customer.creditlimit
          l-tem-rep LABEL "Outro Cliente".
END.

