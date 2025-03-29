type nat = Z | S of nat

let rec nat_to_int (n : nat) : int =
  match n with
  | Z -> 0
  | S n' -> 1 + nat_to_int n'
;;

let rec int_to_nat (n : int) : nat =
  match n with
  | 0 -> Z
  | nu -> S (int_to_nat (nu-1))
;;

let iseven (n : nat) : bool =
  match n with
  | Z -> true
  | _ -> (nat_to_int n) mod 2 = 0
;;

let halve (n : nat) : nat =
  int_to_nat (nat_to_int n / 2)
;;

let add (n : nat) (n' : nat) : nat =
  int_to_nat ((nat_to_int n) + (nat_to_int n'))
;;

let mul (n : nat) (n' : nat) : nat =
  int_to_nat ((nat_to_int n) * (nat_to_int n'))
;;

let equals (n : nat) (n' : nat) : bool =
  nat_to_int n = nat_to_int n'
;;

let leq (n : nat) (n' : nat) : bool =
  nat_to_int n <= nat_to_int n'
;;

assert(leq (S (S (S (S (S Z))))) (S (S (S (S (S (S Z)))))) = true);;
assert(equals (S (S (S (S (S Z))))) (S (S (S (S (S (S Z)))))) = false);;
assert(mul (S (S (S Z))) (S Z) = (S (S (S Z))));;