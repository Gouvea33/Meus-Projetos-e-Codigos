/* Procedimentos */

/* Existem dois tipos de procedimentos no Progress ABL: procedimentos internos e 
prot�tipos de procedimentos que s�o fachadas para DLLs do Windows ou 
procedimentos de biblioteca compartilhada Unix/Linux. Assim como acontece com as
fun��es,os procedimentos n�o podem ser aninhados. Voc� n�o pode aninhar fun��es 
em procedimentos e vice-versa.Um procedimento � chamado com a RUN instru��o.*/

// Sintaxe

/* RUN procedurename. // Executa um procedimento chamado nomeprocedimento.

RUN proc1(INPUT "HELLO"). // Insere a string HELLO em proc1.

RUN proc2(INPUT var1, output var2). // Insere var1 e envia var2 para/de proc2.

RUN proc3(input "name = 'joe'", OUTPUT TABLE ttResult). // Insere name=joe e 
gera registros em uma tabela.

PROCEDURE proc: // Declara um procedimento chamado proc.

END PROCEDURE. // Termina o procedimento atual. *//* Procedimentos */

/* Existem dois tipos de procedimentos no Progress ABL: procedimentos internos e
prot�tipos de procedimentos que s�o fachadas para DLLs do Windows ou 
procedimentos de biblioteca compartilhada Unix/Linux. Assim como acontece com as
fun��es,os procedimentos n�o podem ser aninhados. Voc� n�o pode aninhar fun��es
em procedimentos e vice-versa.Um procedimento � chamado com a RUNinstru��o.*/

// Sintaxe

/* RUN procedurename. // Executa um procedimento chamado nomeprocedimento.

RUN proc1(INPUT "HELLO"). // Insere a string HELLO em proc1.

RUN proc2(INPUT var1, output var2). // Insere var1 e envia var2 para/de proc2.

RUN proc3(input "name = 'joe'", OUTPUT TABLE ttResult). // Insere name=joe e 
gera registros em uma tabela.

PROCEDURE proc: // Declara um procedimento chamado proc.

END PROCEDURE. // Termina o procedimento atual. */


/* Um procedimento interno b�sico */

/* Ao contr�rio das fun��es, n�o h� necessidade de encaminhar a declara��o de um procedimento. Ele pode ser colocado 
em qualquer lugar do seu c�digo, antes ou depois de voc� cham�-lo usando RUN. */

RUN proc.

//Procedure starts here
PROCEDURE proc:

//Procedure ends here

END PROCEDURE. 

/* O nome do procedimento � seguido por dois pontos informando que este � o in�cio de um bloco. O bloco termina com 
END PROCEDURE.(mas pode ser substitu�do simplesmente por END.). */
