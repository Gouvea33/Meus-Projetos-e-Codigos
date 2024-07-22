/*18 – Escreva um programa l-disp3.p que solicite o número do item e mostre o seu
nome, preço e quantidade disponível. O programa deve também mostrar o número,
data e quantidade de cada pedido que contenha este item. Use a opção OF.Pode ser 
usada a cláusula where.*/


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


