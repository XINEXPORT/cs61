Require Import Stdlib.ZArith.ZArith.
Open Scope Z_scope.

Example specific_case : forall (a b z x: Z),
(x - a)*(x-b)*(x-x)*(x-z) = 0.

Proof.

intros a b z x.
ring.
Qed.

