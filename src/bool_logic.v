(*Section 4 - Q1*)
Lemma and_bool : andb true false = false.
Proof.
reflexivity.
Qed.

Lemma or_bool : orb true false = true.
Proof.
reflexivity.
Qed.

Lemma not_bool : negb false = true.
Proof.
reflexivity.
Qed.

(*Section 4 - Q2*)
Lemma imp_TF : implb true false = false.
Proof.
reflexivity.
Qed.

Lemma imp_FT : implb false true = true.
Proof.
reflexivity.
Qed.

(*Section 4 - Q3*)
Lemma q3_or : orb true false = true.
Proof.
reflexivity.
Qed.


Lemma q3_and : andb true false = false.
Proof.
reflexivity.
Qed.

Lemma q3_impl1 : implb true (negb false) = true.
Proof.
reflexivity.
Qed.

Lemma q3_impl2 : implb true false = false.
Proof.
reflexivity.
Qed.

Lemma q3_impl3 : implb (negb true) false = true.
Proof.
reflexivity.
Qed.

Lemma q33_iff: andb (implb true false) (implb false true) = false.
Proof.
reflexivity.
Qed.
