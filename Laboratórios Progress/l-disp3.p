/*18 � Escreva um programa l-disp3.p que solicite o n�mero do item e mostre o seu
nome, pre�o e quantidade dispon�vel. O programa deve tamb�m mostrar o n�mero,
data e quantidade de cada pedido que contenha este item. Use a op��o OF.Pode ser 
usada a cl�usula where.*/


rep-blk:
REPEAT:
    PROMPT-FOR ITEM.itemnum.
    FIND ITEM USING ITEM.itemnum.
    DISPLAY itemnum itemname price onhand.
    for-order:
    FOR EACH orderline OF ITEM:
        FIND order OF orderline.
        DISPLAY order.ordernum order.orderdate orderline.qty.
    END.
END.


