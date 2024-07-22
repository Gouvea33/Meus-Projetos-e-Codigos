/* 14 – Escreva um programa l-orders.p que solicite ao usuário o valor de dois anos, e
então mostre todos os pedidos cuja data do pedido esteja entre 1/1 do primeiro
ano e 31/12 do segundo ano. Garanta que o usuário possa repetir a consulta tantas
vezes quantas quiser sem sair do programa.(Dica: Use a função date para converter 
os valores inteiros para data.)*/



DEF VAR i-ano-ini AS INT FORMAT "9999" NO-UNDO.
DEF VAR i-ano-fim AS INT FORMAT "9999" NO-UNDO.
    REPEAT:

    UPDATE i-ano-ini
           i-ano-fim.
    FOR EACH order
    WHERE order.orderdate >= DATE(1,1,i-ano-ini)
    AND   order.orderdate <= DATE(12,31,i-ano-fim):
    DISP order.ordernum
         order.custnum
         order.orderdate.
         
    END.
END.
