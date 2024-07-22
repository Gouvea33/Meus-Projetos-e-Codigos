/* Há também uma função semelhante chamada OVERLAY este exemplo na documentação 
do Progress que cobre as diferenças entre OVERLAY e SUBSTRING: */


/* This procedure illustrates the differences between the SUBSTRING and
   OVERLAY statements. */

DEFINE VARIABLE cOriginal  AS CHARACTER NO-UNDO INITIAL "OpenEdge".
DEFINE VARIABLE cSubstring AS CHARACTER NO-UNDO.
DEFINE VARIABLE cOverlay   AS CHARACTER NO-UNDO.
DEFINE VARIABLE cResults   AS CHARACTER NO-UNDO.

/* Default behavior without optional LENGTH. */
ASSIGN
 cSubstring              = cOriginal
 SUBSTRING(cSubstring,2) = "***"
 cOverlay                = cOriginal
 OVERLAY(cOverlay,2)     = "***"
 cResults                = "target = ~"OpenEdge~". ~n~n" 
  + "If you do not supply a length, SUBSTRING and OVERLAY default as follows:
  ~n~n" + "SUBSTRING(target,2) = ~"***~"  yields:  " + cSubstring + ". ~n" 
  + "OVERLAY(target,2)     = ~"***~"  yields:  " + cOverlay + ".".

/* Behavior with zero LENGTH. */
ASSIGN
 cSubstring                = cOriginal
 SUBSTRING(cSubstring,2,0) = "***"
 cOverlay                  = cOriginal
 OVERLAY(cOverlay,2,0)     = "***"
 cResults                  = cResults + "~n~n" 
  + "For a zero length, SUBSTRING and OVERLAY behave as follows:  ~n~n" 
  + "SUBSTRING(target,2,0) = ~"***~"  yields:  " + cSubstring + ". ~n" 
  + "OVERLAY(target,2,0)     = ~"***~"  yields:  " + cOverlay + ".".

/* Behavior with LENGTH < replacement. */
ASSIGN 
 cSubstring                = cOriginal
 SUBSTRING(cSubstring,2,1) = "***"
 cOverlay                  = cOriginal
 OVERLAY(cOverlay,2,1)     = "***"
 cResults                  = cResults + "~n~n" 
  + "For a length shorter than the replacement, SUBSTRING and OVERLAY behave
  as follows: ~n~n" + "SUBSTRING(target,2,1) = ~"***~"  yields:  " 
  + cSubstring + ". ~n" + "OVERLAY(target,2,1)     = ~"***~"  yields:  " 
  + cOverlay + ".".

/* Behavior with LENGTH = replacement. */
ASSIGN 
 cSubstring                = cOriginal
 SUBSTRING(cSubstring,2,3) = "***"
 cOverlay                  = cOriginal
 OVERLAY(cOverlay,2,3)     = "***"
 cResults                  = cResults + "~n~n" 
  + "For a length equal to the replacement, SUBSTRING and OVERLAY behave as
  follows:  ~n~n" + "SUBSTRING(target,2,3) = ~"***~"  yields:  " 
  + cSubstring + ". ~n" + "OVERLAY(target,2,3)     = ~"***~"  yields:  " 
  + cOverlay + ".".

/* Behavior with LENGTH > replacement. */
ASSIGN 
 cSubstring                = cOriginal
 SUBSTRING(cSubstring,2,6) = "***"
 cOverlay                  = cOriginal
 OVERLAY(cOverlay,2,6)     = "***"
 cResults                  = cResults + "~n~n" 
  + "For a length greater than the replacement, SUBSTRING and OVERLAY behave
  as follows:  ~n~n" + "SUBSTRING(target,2,6) = ~"***~"  yields:  " 
  + cSubstring + ". ~n" + "OVERLAY(target,2,6)     = ~"***~"  yields:  " 
  + cOverlay + ".".

MESSAGE cResults VIEW-AS ALERT-BOX.
