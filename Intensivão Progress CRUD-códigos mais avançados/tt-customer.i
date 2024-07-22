DEFINE TEMP-TABLE tt-customer NO-UNDO
  FIELD Address      AS CHARACTER   FORMAT "x(35)" LABEL "Address"
  FIELD Address2     AS CHARACTER   FORMAT "x(35)" LABEL "Address2"
  FIELD Balance      AS DECIMAL     DECIMALS 4 FORMAT "->,>>>,>>9.99" LABEL "Balance"
  FIELD City         AS CHARACTER   FORMAT "x(25)" LABEL "City"
  FIELD Comments     AS CHARACTER   FORMAT "x(80)" LABEL "Comments"
  FIELD Contact      AS CHARACTER   FORMAT "x(30)" LABEL "Contact"
  FIELD Country      AS CHARACTER   FORMAT "x(20)" INITIAL "USA" LABEL "Country"
  FIELD CreditLimit  AS DECIMAL     DECIMALS 2 FORMAT "->,>>>,>>9" INITIAL 1500 LABEL "Credit Limit"
  FIELD CustNum      AS INTEGER     FORMAT ">>>>9" LABEL "Cust Num"
  FIELD Discount     AS INTEGER     FORMAT ">>9%" LABEL "Discount"
  FIELD EmailAddress AS CHARACTER   FORMAT "x(50)" LABEL "Email"
  FIELD Fax          AS CHARACTER   FORMAT "x(20)" LABEL "Fax"
  FIELD Name         AS CHARACTER   FORMAT "x(30)" LABEL "Name"
  FIELD Phone        AS CHARACTER   FORMAT "x(20)" LABEL "Phone"
  FIELD PostalCode   AS CHARACTER   FORMAT "x(10)" LABEL "Postal Code"
  FIELD SalesRep     AS CHARACTER   FORMAT "x(4)" LABEL "Sales Rep"
  FIELD State        AS CHARACTER   FORMAT "x(20)" LABEL "State"
  FIELD Terms        AS CHARACTER   FORMAT "x(20)" INITIAL "Net30" LABEL "Terms"
  FIELD tp-crud      AS INT. //1 - inclusão, 2 - alteração.

DEFINE TEMP-TABLE tt-param NO-UNDO
  FIELD cust-num-ini AS INT
  FIELD cust-num-fim AS INT
  FIELD name-ini     LIKE customer.NAME
  FIELD name-fim     LIKE customer.NAME.
  
