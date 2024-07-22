/* Declarações básicas de variáveis */


/*                                                                                                                                                                                                                                                
These variables are declared with `NO-UNDO`.
That states that no undo handling is wanted for this specific variable 
in case of a transactional roll-back. 

This should always be the default unless transactional control over 
this variable is a requirement. 
*/

/* Strings. A character longer than 32K should be a longchar */
DEFINE VARIABLE c   AS CHARACTER   NO-UNDO.
DEFINE VARIABLE cl  AS LONGCHAR    NO-UNDO.

/* Integers and decimals. INTEGER = 32 bit. INT64 = 64 bits */
DEFINE VARIABLE i   AS INTEGER     NO-UNDO.
DEFINE VARIABLE j   AS INT64       NO-UNDO.
DEFINE VARIABLE k   AS DECIMAL     NO-UNDO.

/* Date and datetimez. Unset variables have the unknown value ? */
DEFINE VARIABLE d   AS DATE        NO-UNDO.
DEFINE VARIABLE dt  AS DATETIME    NO-UNDO.
DEFINE VARIABLE dtz AS DATETIME-TZ NO-UNDO.

/* LOGICAL = Boolean data. True or false (or ?) */
DEFINE VARIABLE l   AS LOGICAL     NO-UNDO.

/* Rowids and recids are internal identifiers to database records */
DEFINE VARIABLE rid AS ROWID       NO-UNDO.
DEFINE VARIABLE rec AS RECID       NO-UNDO.

/* A handle is a handle to anything: a session, an on screen widget etc */
/* A Com-handle is used for ActiveX Com-automation */
DEFINE VARIABLE h   AS HANDLE      NO-UNDO.
DEFINE VARIABLE hc  AS COM-HANDLE  NO-UNDO.

/* A raw variable can contain any data. Binary, strings etc */
DEFINE VARIABLE rw  AS RAW         NO-UNDO.

/* A mempointer contains a sequence of bytes in memory. */
DEFINE VARIABLE m   AS MEMPTR      NO-UNDO.
