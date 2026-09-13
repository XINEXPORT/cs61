Lemma if_then_or : forall A B : Prop, (A -> B) <-> (~A \/ B).
Proof.
  split.
  - intros H.
    admit.
  - intros H HA.
    destruct H as [HnA | HB].
    + contradiction.
    + exact HB.
Admitted.

Lemma or_then_if: forall A B : Prop, (~A \/ B) -> (A -> B).
Proof.
  intros A B H HA.
  destruct H as [HnA | HB].
  - contradiction.
  - exact HB.
Qed.

(*
Variable Definitions (H's type differs by context below)

--- if_then_or, forward branch ((A -> B) -> ~A \/ B) ---
  H    : hypothesis of type (A -> B)
  goal : ~A \/ B
  Not constructively provable without deciding A;
  admit is a placeholder for case split on A.

--- if_then_or, backward branch ((~A \/ B) -> (A -> B)) ---
--- and or_then_if ---
  A, B : the two propositions from the statement
  H    : hypothesis of type (~A \/ B)   -- the disjunction assumed
  HA   : hypothesis of type A           -- assumed so we can prove B
  goal at this point : B

  destruct splits H : ~A \/ B into two cases:
    HnA : ~A   (left disjunct)
    HB  : B    (right disjunct)
  Each becomes a subgoal, handled by a bullet.

  Case HnA : ~A
    We also have HA : A from earlier.
    HnA and HA directly contradict each other.

  Case HB : B
    This is the goal.
*)
