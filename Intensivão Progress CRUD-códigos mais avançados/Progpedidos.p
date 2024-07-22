/* Este programa começa com a definição de duas tabelas temporárias, ttProduto e
ttPedido, que representam produtos e pedidos, respectivamente. Em seguida, ele 
insere alguns produtos na tabela ttProduto. Uma transação é iniciada para criar
um pedido na tabela ttPedido, calculando o total do pedido com base no preço do 
produto e na quantidade pedida. Se ocorrer um erro durante a transação, ele será
capturado e uma mensagem de erro será exibida. Por fim, o programa exibe os 
detalhes dos pedidos.*/



/* Definição das tabelas de banco de dados */
DEFINE TEMP-TABLE ttProduto NO-UNDO
    FIELD ProdutoID AS INTEGER
    FIELD Nome AS CHARACTER
    FIELD Preco AS DECIMAL
    INDEX ProdutoIdx IS PRIMARY ProdutoID.

DEFINE TEMP-TABLE ttPedido NO-UNDO
    FIELD PedidoID AS INTEGER
    FIELD ProdutoID AS INTEGER
    FIELD Quantidade AS INTEGER
    FIELD TotalPedido AS DECIMAL
    INDEX PedidoIdx IS PRIMARY PedidoID.

/* Variáveis para controle de transações */
DEFINE VARIABLE lErro AS LOGICAL NO-UNDO.
DEFINE VARIABLE cMensagemErro AS CHARACTER NO-UNDO.

/* Simulação de inserção de produtos */
CREATE ttProduto.
ASSIGN
    ttProduto.ProdutoID = 1
    ttProduto.Nome = "Caneta"
    ttProduto.Preco = 1.50.

CREATE ttProduto.
ASSIGN
    ttProduto.ProdutoID = 2
    ttProduto.Nome = "Caderno"
    ttProduto.Preco = 5.00.

/* Início da transação */
DO TRANSACTION:
    CREATE ttPedido.
    ASSIGN
        ttPedido.PedidoID = 1
        ttPedido.ProdutoID = 1 /* Caneta */
        ttPedido.Quantidade = 10
        ttPedido.TotalPedido = ttPedido.Quantidade * ttProduto.Preco.

/* Verificação de erro na transação */
    IF ERROR-STATUS:ERROR THEN DO:
        lErro = TRUE.
        cMensagemErro = ERROR-STATUS:GET-MESSAGE(1).
        UNDO, THROW NEW Progress.Lang.AppError(cMensagemErro, 1).
    END.
END.

/* Exibição dos pedidos */
FOR EACH ttPedido NO-LOCK:
    DISPLAY ttPedido.PedidoID ttPedido.ProdutoID ttPedido.Quantidade ttPedido.TotalPedido.
END.

/* Tratamento de erro */
CATCH e AS Progress.Lang.AppError:
    MESSAGE "Erro ao processar pedido: " + e:GetMessage(1) VIEW-AS ALERT-BOX ERROR.
END CATCH.
