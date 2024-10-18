let f x = match x with
  None -> 0
| Some x -> x;;


let incr_opt (a : int option) : int option =
  match (f a) with 
  0 -> None
  | a -> Some (a + 1);;

assert(incr_opt (Some 5) = Some 6);;
assert(incr_opt (None) = None);;