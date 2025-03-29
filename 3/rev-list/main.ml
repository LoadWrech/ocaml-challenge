(* Non è tail recursive *)
let rec rev (a : 'a list) : 'a list =
  match a with
  | [] -> []
  | n::m -> (rev m) @ [n]
;;


(* Tail recursive *)
let tail_rev (a : 'a list) : 'a list =
  let rec aux acc = function
    | [] -> acc
    | n::m -> aux (n::acc) m
  in
  aux [] a;;