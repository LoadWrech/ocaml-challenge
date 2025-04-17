let rec mem (n : 'a) (l : 'a list) : bool =
  match l with
  | [] -> false
  | h::t -> 
    if h = n then
      true
    else
      mem n t
;;

assert(mem 1 [1;3;5]);;
assert(mem 2 [1;3;5] = false);;
assert(mem [1;2] [[1];[2];[2;1]] = false);;
assert(mem [1;2] [[1];[2];[2;1]] = false);;
assert(mem [1;2] [[1];[2];[1;2]]);;

let rec subseteq (l : 'a list) (l' : 'a list) : bool =
  match l with
  | [] -> true
  | h::t -> 
    if mem h l' then
      true && subseteq t l'
    else
      false 
;;

assert(subseteq [] [1;3;5]);;
assert(subseteq [1;5] [5;1]);;
assert(subseteq [1;5] [1;3;5]);;
assert(subseteq [1;5] [5;3;1]);;
assert(subseteq [2] [1;3;5] = false);;
assert(subseteq [[1;2]] [[1];[2];[2;1]] = false);;
assert(subseteq [[1];[2;1]] [[1];[2];[2;1]]);;


(* Da rifare, devo checkare che siano uguali, non che uno sia incluso
nell'altro *)
let rec seteq (l1 : 'a list) (l2 : 'a list) : bool =
  (* match l1 with
  | [] -> true
  | h::t -> 
    if mem h l2 then
      true && seteq t l2
    else
      false *)
      true
;;

assert(seteq [1;5;3] [1;3;5]);;
assert(seteq [1;5;2] [1;3;5] = false);;
assert(seteq [[1;2]] [[2;1]] = false);;
assert(seteq [[1];[1;2]] [[1;2];[1]]);;
assert(mem [1;2] [[1];[2];[2;1]] = false);;