/* 31 - Escreva o programa l-mltfrm.p que mostre as informações dos clientes, dos
seus pedidos, do seu representante e a quantidade de pedidos. Note que a cada
novo cliente as outras duas frames são atualizadas.(Serão 3 frames).*/


DEFINE VARIABLE assut-num AS INTEGER LABEL "ord.num".
for-cust:
FOR EACH customer:
    DISPLAY NAME WITH FRAME emp-frame DOWN OVERLAY.
    assut-num = 0.
    for-ord:
    FOR EACH order OF customer:
        assut-num = assut-num + 1.
        DISPLAY ordernum orderdate
           WITH FRAME assut-frame 5 DOWN COLUMN 40 OVERLAY.
        DISPLAY assut-num WITH FRAME emp-frame.
    END.
    FIND salesrep OF customer.
    DISPLAY salesrep.salesrep region
       WITH FRAME dept-frame COLUMN 40 SIDE-LABELS 1 COLUMN OVERLAY.
END.
