let mux21 s0 a b = s0 && a || not s0 && b;;

let mux22 s0 a b = if s0 then
    a
  else
    b;;

let mux23 s0 a b = match (s0, a, b) with
  | (true, _, _) -> a
  | _ -> b;;


assert(mux21 true false true = false);;
assert(mux21 false false true = true);;

assert(mux22 true false true = false);;
assert(mux22 false false true = true);;

assert(mux23 true false true = false);;
assert(mux23 false false true = true);;

let mux4 s1 s0 a0 a1 a2 a3 = if not s1 then
    mux21 s0 a1 a0
  else
    mux21 s0 a3 a2;;


(* 
0, 0 -> a0
0, 1 -> a1
1, 0 -> a2
1, 1 -> a3

*)

assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;