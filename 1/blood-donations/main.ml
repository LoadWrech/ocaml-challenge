type blood_group = A | B | AB | O

let check_groups (x : blood_group) (y : blood_group) : bool = 
  match (x, y) with
  | (O, _) -> true
  | (_, AB) -> true
  | (l, g) when l = g -> true
  | _ -> false;;

let check_groups2 (x : blood_group) (y : blood_group) : bool = 
  if x = y then
    true
  else
    match (x, y) with
    | (O, _) -> true
    | (_, AB) -> true
    | _ -> false;;

assert (check_groups2 O AB = true);;
assert (check_groups2 A B = false);;
assert (check_groups2 AB AB = true);;
