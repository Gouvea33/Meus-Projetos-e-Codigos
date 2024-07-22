/* 24 – Escreva um programa l-buffer.p que mostre o código, nome e crédito limite de
todos os clientes, classificado por crédito limite. O programa deverá também
mostrar uma coluna “Outro Cli”, que indica que existe outro cliente com o mesmo
limite de crédito. Dica: Utilize o comando BUFFER para ler outro cliente. Obs:
Garanta que o outro cliente que ele encontrar não seja o mesmo que ele está
lendo).*/



DEF VAR l-tem-rep AS LOG FORMAT "Sim/Não" NO-UNDO.
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

