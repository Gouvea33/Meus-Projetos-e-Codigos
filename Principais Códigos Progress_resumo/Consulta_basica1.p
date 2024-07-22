/* Consultas */

/* Os exemplos ser�o baseados em uma c�pia do banco de dados de demonstra��o Sports
2000 fornecido com a configura��o do Progress.

Ao trabalhar com consultas em andamento, voc� precisa:

DEFINE a consulta e definir em quais buffers (tabelas) e campos ela trabalha.

OPEN a consulta com uma WHERE cl�usula espec�fica que define como recuperar os 
registros. Possivelmente tamb�m classificando ( BY/ BREAK BY)

GET os dados reais - que podem ser o registro FIRST, NEXT, PREV(para anterior) ou 
LAST correspondente. */

// Sintaxe

/* DEFINE QUERY nome da consulta FOR nome do buffer. 
//Defini��o geral de consulta para um buffer
DEFINE QUERY nome da consulta FOR nome-buffer1, nome-buffer2. 
//Juntando dois buffers
DEFINE QUERY nome-da-consulta PARA CAMPOS de nome-buffer (campo1 campo2). 
//Recupera apenas campo1 e campo2
DEFINE QUERY nome-da-consulta FOR nome-do-buffer EXCETO (campo3). 
//Recupera todos os campos exceto field3. */

/* Consulta B�sica */

/* Define a query named q1 for the Customer table */
DEFINE QUERY q1 FOR Customer.
/* Open the query for all Customer records where the state is "tx" */
OPEN QUERY q1 FOR EACH Customer WHERE Customer.state ='TX'.                                                                                                                                                                               
/* Get the first result of query q1 */
GET FIRST q1.                                                                                                                                                                                                                   

/* Repeat as long as query q1 has a result */
DO WHILE NOT QUERY-OFF-END('q1'):          
    /* Display Customer.Name in a frame called frame1 with 10 rows */
    DISPLAY Customer.Name WITH FRAME frame1 10 DOWN.
    /* Move down the target line where to display the next record */
    DOWN WITH FRAME frame1.
    /* Get the next result of query q1 */
    GET NEXT q1.
END.
/* Display how many results query q1 had. */
DISPLAY NUM-RESULTS('q1') LABEL "Number of records".

/* Close the query */
CLOSE QUERY q1.

