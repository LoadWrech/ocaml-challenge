let xor1 a b = (a && not b) || (not a && b);;

let xor2 a b = if a = b then 
  false
else 
  true;;

let xor3 a b = match (a, b) with
  | (true, true) -> false
  | (false, false) -> false
  | _ -> true;;

assert(xor1 true true = false);;
assert(xor1 true false = true);;
assert(xor1 false true = true);;
assert(xor1 false false = false);;

assert(xor2 true true = false);;
assert(xor2 true false = true);;
assert(xor2 false true = true);;
assert(xor2 false false = false);;

assert(xor3 true true = false);;
assert(xor3 true false = true);;
assert(xor3 false true = true);;
assert(xor3 false false = false);;