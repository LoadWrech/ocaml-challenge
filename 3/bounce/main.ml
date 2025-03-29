(* let bounce (n : int) : (int -> int) =
  fun x ->
    if x >= 2*n then
      let m = x mod (2*n)
      in
        m - (x mod (2*n) - m)
    else
      n - (x - n)
;; *)

let bounce (n : int) : (int -> int) =
  fun x ->
    let m = x mod (2*n) in
    if m <= n then
      m
    else
      n - (m mod n)
;;

assert (bounce 3 0 = 0);;
assert (bounce 3 1 = 1);;
assert (bounce 3 2 = 2);;
assert (bounce 3 3 = 3);;
assert (bounce 3 4 = 2);;
assert (bounce 3 5 = 1);;
assert (bounce 3 6 = 0);;
assert (bounce 3 7 = 1);;
assert (bounce 3 8 = 2);;
assert (bounce 3 9 = 3);;
assert (bounce 3 10 = 2);;
assert (bounce 3 11 = 1);;
assert (bounce 3 12 = 0);;

(* Test con n=5 *)
assert (bounce 5 0 = 0);;
assert (bounce 5 1 = 1);;
assert (bounce 5 2 = 2);;
assert (bounce 5 3 = 3);;
assert (bounce 5 4 = 4);;
assert (bounce 5 5 = 5);;
assert (bounce 5 6 = 4);;
assert (bounce 5 7 = 3);;
assert (bounce 5 8 = 2);;
assert (bounce 5 9 = 1);;
assert (bounce 5 10 = 0);;
assert (bounce 5 11 = 1);;
assert (bounce 5 12 = 2);;

(* Test con n=1 *)
assert (bounce 1 0 = 0);;
assert (bounce 1 1 = 1);;
assert (bounce 1 2 = 0);;
assert (bounce 1 3 = 1);;
assert (bounce 1 4 = 0);;

(* Test con un n più grande *)
assert (bounce 10 0 = 0);;
assert (bounce 10 5 = 5);;
assert (bounce 10 10 = 10);;
assert (bounce 10 15 = 5);;
assert (bounce 10 20 = 0);;
assert (bounce 10 25 = 5);;
assert (bounce 10 30 = 10);;
assert (bounce 10 35 = 5);;
assert (bounce 10 40 = 0);;
