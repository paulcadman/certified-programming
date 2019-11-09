Require Import Arith Bool List.

(* Exercise on lists *)

Check True.

SearchRewrite ( (_ + _) * _).

Fixpoint listOfNat n : list nat :=
  match n with
  | 0 => nil
  | S p => (listOfNat p) ++ (p :: nil) 
  end.

Eval compute in listOfNat 5.

Print list.


(* Exercise on sorting *)

Definition headComp (l : list nat): bool :=
  match l with
  | a :: b :: _ => Nat.leb a b
  | _ => true
  end.

(* Search (nat -> nat -> bool). *)

Search bool.

Fixpoint isSorted (l : list nat) : bool :=
  match l with
  | a :: xs => if headComp (a :: xs) then headComp xs else false
  | nil => true
  end.

(* list_ind *)
(*      : forall (A : Type) (P : list A -> Prop), *)
(*        P nil -> *)
(*        (forall (a : A) (l : list A), P l -> P (a :: l)) -> *)
(*        forall l : list A, P l *)


Lemma example3 : forall A B, A \/ B -> B \/ A.
  intros A B H.
  destruct H as [H | H].
  - right.
    assumption.
  - left.
    assumption.
Qed.


Lemma example4 : forall A B, A \/ B -> B \/ A.
  intros A B H.
  elim H.
  - intro.
    right.
    assumption.
  - intro.
    left.
    assumption.
Qed.


Lemma example5 : forall A B, A \/ B -> B \/ A.
  intros A B H.
  induction H; auto.
Qed.

Lemma example6 : forall A B, A \/ B -> B \/ A.
  intros A B H.
  case H.
Admitted.

Theorem my_and_assoc : forall A B C:Prop, A/\(B/\C)->(A/\B)/\C.
  tauto.
Qed.

Print my_and_assoc.

Theorem t3 : forall A: Prop, ~(A/\~A).
  intros A H.
  destruct H as [H1 H2].
  destruct H2.
  exact H1.
  (* unfold not. *)
  (* intros. *)
  (* destruct H as [H1 H2]. *)
  (* apply H2. *)
  (* exact H1. *)
Qed.

Search (_ \/ _ -> _).

Print or.

Theorem assoc_or : forall A B C: Prop, A\/(B\/C)->(A\/B)\/C.
  intros A B C [H1 | [H2 | H3]].
  - left.
    left.
    exact H1.
Admitted.


Print example5.
Print example3.
(* example4 =  *)
(* fun (A B : Prop) (H : A \/ B) => *)
(* or_ind *)
(*   (fun H0 : A => or_intror H0) *)
(*   (fun H0 : B => or_introl H0) H *)
(*      : forall A B : Prop, *)
(*        A \/ B -> B \/ A *)


Print example3.

Fixpoint add n m := match n with 0 => m | S p => add p (S m) end.

Theorem add_one : forall n m, add n (S m) = S (add n m).
Proof.
  induction n as [|p IH].
  - reflexivity.
  - intros.
    simpl.
    apply IH.
Qed.

Print add_one.

Fixpoint sum_odd_n (n:nat) : nat :=
  match n with
  | 0 => 0
  | S p => 1 + 2*p +sum_odd_n p
  end.

Lemma wibble : forall n: nat, n + n * n = (S n) * n.
Proof.
  reflexivity.
Qed.

Theorem sum_n_squared : forall n:nat, sum_odd_n n = n*n.
Proof.
  intros n.
  induction n.
  - simpl.
    reflexivity.
  - simpl.
    rewrite IHn.
    Search (_ = _ + 0).
    rewrite <- plus_n_O.
    remember (n * n) as squ_n eqn:H.
    rewrite Nat.mul_comm.
    rewrite H.
    simpl.
    rewrite plus_assoc.
    reflexivity.
Qed.

Print sum_n_squared.

Fixpoint count n l := match l with
    nil => 0
  | a::tl =>
    let r := count n tl in if beq_nat n a then 1+r else r end.

Fixpoint length {a: Type} (l: list a) : nat :=
  match l with
  | nil => 0
  | x::xs => S (length xs) end.

Theorem length_plus_one : forall a (l: list a) e, length (e::l) = S (length l).
Proof.
  intros.
  simpl.
  reflexivity.
Qed.


Inductive bin : Type := L : bin
                      | N : bin -> bin -> bin.

Fixpoint flatten_aux (t1 t2:bin) : bin :=
  match t1 with
    L => N L t2
  | N t1' t2' => flatten_aux t1' (flatten_aux t2' t2)
  end.

Fixpoint flatten (t:bin) : bin :=
  match t with
    L => L
  | N t1 t2 => flatten_aux t1 (flatten t2)
  end.

Fixpoint size (t:bin) : nat :=
  match t with
    L => 1
  | N t1 t2 => 1 + size t1 + size t2
  end.

Compute flatten (N (N L L) L).
Compute size (N (N L L) L).

Compute flatten (N (N L L) (N L L)).

Lemma flatten_aux_size : forall t1 t2,  size (flatten_aux t1 t2) = 1 + size t1 + size t2.
Proof.
  induction t1 as [|t1 IH1 t1' IH1'].
  - simpl.
    intro.
    apply eq_refl.
  - simpl.
    intro t3.
    rewrite IH1.
    rewrite IH1'.
    ring.
Qed.

Lemma flatten_size : forall t, size (flatten t) = size t.
Proof.
  induction t.
  - reflexivity.
  - remember (size (flatten (N t1 t2))) as LHS eqn:E.
    unfold size.
    fold (size t1).
    fold (size t2).
    rewrite E.
    rewrite <- IHt2.
    simpl.
    rewrite flatten_aux_size.
    reflexivity.
Qed.