/* 20 – Modifique o procedimento l-disp3.p, chamando-o de l-disp4.p de modo que
tenha a mesma funcionalidade, mas sem usar a opção OF.(Dica)Usar cláusula each*/


rep-blk:
REPEAT:
    PROMPT-FOR ITEM.itemnum.
    FIND ITEM USING ITEM.itemnum.
    DISPLAY itemnum itemname price onhand.
    for-order:
    FOR EACH orderline 
        WHERE orderline.itemnum = ITEM.itemnum,
        EACH order OF orderline
        BY orderline.qty DESCENDING 
        BY orderdate:
        DISPLAY order.ordernum order.orderdate orderline.qty.
    END.
END.
