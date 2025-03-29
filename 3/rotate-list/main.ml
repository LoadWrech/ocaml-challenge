let rec rev_list acc l = 
  match l with
  | [] -> acc
  | n::li -> rev_list (n::acc) li
;;

(* Troppo complicata quella full tail-recursive, questa
ha comunque O(n) però *)
let tail_rotate (n : int) (l : 'a list) : 'a list =
  let rec tail_rec head tail n =
    if n > 0 then
      match head with
      | [] -> head@(rev_list [] tail)
      | m::li -> tail_rec li (m::tail) (n-1)
    else
      head@(rev_list [] tail)
  in 
  tail_rec l [] n
;;


let rec rotate (n : int) (l : 'a list) : 'a list =
  if n > 0 then
    match l with
    | [] -> l
    | m::li -> rotate (n-1) (li@[m])
  else
    l
;;

assert(rotate 0 [5;6;7;8] = [5;6;7;8]);;  
assert(rotate 1 [5;6;7;8] = [6;7;8;5]);;  
assert(rotate 2 [5;6;7;8] = [7;8;5;6]);;  
assert(rotate 3 [5;6;7;8] = [8;5;6;7]);;  
assert(rotate 4 [5;6;7;8] = [5;6;7;8]);;  
assert(tail_rotate 0 [5;6;7;8] = [5;6;7;8]);;  
assert(tail_rotate 1 [5;6;7;8] = [6;7;8;5]);;  
assert(tail_rotate 2 [5;6;7;8] = [7;8;5;6]);;  
assert(tail_rotate 3 [5;6;7;8] = [8;5;6;7]);;  
assert(tail_rotate 4 [5;6;7;8] = [5;6;7;8]);;  