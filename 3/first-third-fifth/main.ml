let rec rev_list (acc : 'a list) (l : 'a list) : 'a list =
  match l with
  | [] -> acc
  | n::m -> rev_list (n::acc) m
;;

let make_tuple (l : 'a list) : ('a * 'a * 'a) option =
  match l with
  | [n;m;o] -> Some (n, m, o)
  | _ -> None
;;

let rec build_list acc lst cnt =
  if cnt < 5 then
    match lst with
    | [] -> acc
    | n::m ->
      if cnt mod 2 = 0 then
        build_list (n::acc) m (cnt+1)
      else
        build_list acc m (cnt+1)
  else
    acc
;;

let first_third_fifth (l : 'a list) : ('a * 'a * 'a) option =
  make_tuple (rev_list [] (build_list [] l 0))
;;


assert(first_third_fifth ["cat"; "dog"] = None);;
assert(first_third_fifth [1; 2; 3; 4; 5; 6] = Some (1, 3, 5));;