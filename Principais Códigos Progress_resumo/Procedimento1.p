/* Procedimentos */

/* Existem dois tipos de procedimentos no Progress ABL: procedimentos internos e 
protótipos de procedimentos que são fachadas para DLLs do Windows ou 
procedimentos de biblioteca compartilhada Unix/Linux. Assim como acontece com as
funções,os procedimentos não podem ser aninhados. Você não pode aninhar funções 
em procedimentos e vice-versa.Um procedimento é chamado com a RUN instrução.*/

// Sintaxe

/* RUN procedurename. // Executa um procedimento chamado nomeprocedimento.

RUN proc1(INPUT "HELLO"). // Insere a string HELLO em proc1.

RUN proc2(INPUT var1, output var2). // Insere var1 e envia var2 para/de proc2.

RUN proc3(input "name = 'joe'", OUTPUT TABLE ttResult). // Insere name=joe e 
gera registros em uma tabela.

PROCEDURE proc: // Declara um procedimento chamado proc.

END PROCEDURE. // Termina o procedimento atual. *//* Procedimentos */

/* Existem dois tipos de procedimentos no Progress ABL: procedimentos internos e
protótipos de procedimentos que são fachadas para DLLs do Windows ou 
procedimentos de biblioteca compartilhada Unix/Linux. Assim como acontece com as
funções,os procedimentos não podem ser aninhados. Você não pode aninhar funções
em procedimentos e vice-versa.Um procedimento é chamado com a RUNinstrução.*/

// Sintaxe

/* RUN procedurename. // Executa um procedimento chamado nomeprocedimento.

RUN proc1(INPUT "HELLO"). // Insere a string HELLO em proc1.

RUN proc2(INPUT var1, output var2). // Insere var1 e envia var2 para/de proc2.

RUN proc3(input "name = 'joe'", OUTPUT TABLE ttResult). // Insere name=joe e 
gera registros em uma tabela.

PROCEDURE proc: // Declara um procedimento chamado proc.

END PROCEDURE. // Termina o procedimento atual. */


/* Um procedimento interno básico */

/* Ao contrário das funções, não há necessidade de encaminhar a declaração de um procedimento. Ele pode ser colocado 
em qualquer lugar do seu código, antes ou depois de você chamá-lo usando RUN. */

RUN proc.

//Procedure starts here
PROCEDURE proc:

//Procedure ends here

END PROCEDURE. 

/* O nome do procedimento é seguido por dois pontos informando que este é o início de um bloco. O bloco termina com 
END PROCEDURE.(mas pode ser substituído simplesmente por END.). */
