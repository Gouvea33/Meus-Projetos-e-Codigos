/* 19 – Modifique o procedimento l-disp3.p, chamando-o de l-disp5.p de modo que
mostre os pedidos nos quais o item aparece, classificados por quantidade (ordem
decrescente).*/

rep-blk:
REPEAT:
    PROMPT-FOR ITEM.itemnum.
    FIND ITEM USING ITEM.itemnum.
    DISPLAY itemnum itemname price onhand.
    for-order:
    FOR EACH orderline WHERE orderline.itemnum = ITEM.itemnum
        BY orderline.qty DESCENDING:
        FIND order OF orderline.
        DISPLAY order.ordernum order.orderdate orderline.qty.
    END.
END.
