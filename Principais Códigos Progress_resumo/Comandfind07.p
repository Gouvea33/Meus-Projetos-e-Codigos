FIND LAST customer NO-LOCK WHERE customer.state = "CA" NO-ERROR.

 IF AVAIL customer THEN
 
   MESSAGE "Achei" customer.custnum
       VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
       
 ELSE DO:
 
   MESSAGE  "Não achei"
       VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
     
 END.
 
 FIND CURRENT customer EXCLUSIVE-LOCK NO-ERROR.
 
 UPDATE customer.NAME.
 
 FIND CURRENT customer NO-LOCK NO-ERROR.
 
 RELEASE customer. //libera registro - tira da memória e desaloca no banco.
 
 
 
 
