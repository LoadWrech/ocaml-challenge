let f x = match x with
  |  None -> 0
  | Some x -> x;;

let incr_opt (n : int option) : int option = 
  if n = None then
    None
  else
    Some (f n + 1);;

assert(incr_opt (Some 5) = Some 6);;
assert(incr_opt None = None);;