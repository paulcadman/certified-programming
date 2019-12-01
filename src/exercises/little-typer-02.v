Require Import Vector Arith Bool List Nat.

(** Remove the following axiom when you've finished all the exercises. This
axoim provides a value of any type to allow the file to compile and incomplete
expressions to be used.
 *)
Axiom fill_me : forall {X : Type}, X.

(** Definitions used in the exercises **)

Definition leq : nat -> nat -> Prop :=
  fun m n => exists k, k + m = n.

Definition Even : nat -> Prop :=
  fun n => exists k, n = 2 * k.

Definition Odd : nat -> Prop :=
  fun n => exists k, n = 2 * k + 1.

(** Exercise 2.1
Prove that filtering a list results in a list with length less than or equal to the length of the original list.
 *)

Theorem length_filter_list : forall A (l : list A) (p : A -> bool), leq (length (filter p l)) (length l).
Proof.
  exact fill_me.
Qed.

(** Exercise 2.2
Prove that less-than-or-equal is transitive.
 *)
Theorem leq_transitive : forall a b c, leq a b -> leq b c -> leq a c.
Proof.
  exact fill_me.
Qed.

(** Exercise 2.3
Prove that less-than-or-equal to is anti-symmetric.
 *)

Theorem leq_antisymmetry : forall a b: nat, leq a b -> leq b a -> a = b.
Proof.
  exact fill_me.
Qed.

(** Hint: The following lemmas may be useful *)

Lemma inj_plus : forall k a: nat, k + a = a -> k = 0.
Proof.
  exact fill_me.
Qed.

Lemma sum_to_zero : forall n m, n + m = 0 -> m = 0.
Proof.
  exact fill_me.
Qed.

(** Exercise 2.4
Prove for all numbers a and b that either a is less-than-or-equal to b or
      b is less than equal to a.
 *)
Theorem either_a_leq_b_or_b_leq_a : forall a b, leq a b \/ leq b a.
Proof.
  exact fill_me.
Qed.

(** Exercise 2.5
Prove that the sum of two even numbers is even.
 *)

Theorem sum_of_two_evens_is_even : forall n m, Even n -> Even m -> Even (n + m).
Proof.
  exact fill_me.
Qed.

(** Exercise 2.6
Prove that the sum of two odd numbers is even.
 *)

Theorem sum_of_two_odds_is_even : forall n m, Odd n -> Odd m -> Even (n + m).
Proof.
  exact fill_me.
Qed.

(** Exercise 2.7
Prove that either n or its succesor is even.
 *)

Theorem either_n_or_succ_n_is_even : forall n, Even n \/ Even (S n).
Proof.
  exact fill_me.
Qed.

(** Exercise 2.8
Prove that all numbers are either even or odd.
 *)

Theorem even_or_odd : forall n, Even n \/ Odd n.
Proof.
  exact fill_me.
Qed.
