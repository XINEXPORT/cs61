(*
First Claim
There is a lady in this room and there is a tiger in the other room
*)
Definition doorA (a b : bool) : bool :=
  andb a (negb b).
  
(*
Second Claim
There is atleast one lady in a room and atleast one tiger in a room
*)
Definition doorB (a b : bool) : bool :=
  andb (orb a b) (orb (negb a) (negb b)).

Compute (doorA true false, doorB true false).
Compute (doorA true true, doorB true true).
Compute (doorA false false, doorB false false).
Compute (doorA false true, doorB false true).

(*
kingCondition
Determine which door has a truthful signage
*)
Definition kingCondition (a b : bool) : bool :=
  xorb (doorA a b) (doorB a b).
  
Compute (kingCondition true false).
Compute (kingCondition true true).
Compute (kingCondition false false).
Compute (kingCondition false true).