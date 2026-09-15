Require Import ZArith.
Open Scope Z_scope.

(*Prove that the product of two odd integers is odd*)


Definition Odd (n : Z) : Prop := exists k, n = 2 * k + 1.

Theorem odd_mult : forall a b : Z, Odd a -> Odd b -> Odd (a * b).

Proof.
  
  intros a b [k1 Hk1] [k2 Hk2].
  exists (2 * k1 * k2 + k1 + k2).
  rewrite Hk1, Hk2.
  ring.
Qed.