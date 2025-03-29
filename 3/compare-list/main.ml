(* let rec compare_list (f : 'a -> 'a -> int) (a : 'a list) (b : 'a list) : int =
  match a with
    | [] -> 
        match b with
          | [] -> 0
          | _ -> -1
    | n::m ->
      match b with
        | [] -> 1
        | o::p -> 
            if f n o = 0 then
              compare_list f m p
            else
              f n o 
;; *)

let rec compare_list (f : 'a -> 'a -> int) (a : 'a list) (b : 'a list) : int =
  match (a, b) with
  | ((n::m), (o::p)) ->
    if f n o = 0 then
      compare_list f m p
    else
      f n o
  | ([], []) -> 0
  | ([], _) -> -1
  | (_ , []) -> 1
;;

assert (compare_list Int.compare [0] [1] <= 0);;
assert (compare_list Int.compare [0;1;0;0] [0;1;0;0] = 0);;
assert (compare_list Int.compare [0;1;0;0] [0;0;1;0] >= 0);;
assert (compare_list Int.compare [1;1;1;1] [1] >= 0);;
assert (compare_list Int.compare [1;1;2;3] [1;2;3] <= 0);;
assert (compare_list Int.compare [2;42;1] [3] <= 0);;
assert (compare_list Char.compare ['a';'b';'a';'c';'o'] ['a';'b';'e';'t';'e'] <= 0);;