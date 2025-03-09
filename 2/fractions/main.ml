let is_posfrac ((a : int), (b : int)) : bool =
  match (a, b) with
  | (a, b) when a >= 0 && b > 0 -> true
  | (a, b) when a <= 0 && b < 0 -> true
  | _ -> false;;


let compare_posfrac ((a : int), (b : int)) ((c : int), (d : int)) : int =
  if b <> 0 && d <> 0 then
    if a * d = b * c then
      0
    else if a * d > b * c then 
      1
    else
      -1
  else
    failwith("not a fraction");;


(*
a / b = c / d

a * d = b * c

2 / 4 = 3 / 6

2 * 6 = 3 * 4

1 / 3 = 3 / 9
9 = 9

5 / 6 = 3 / 5
25 > 18
*)

assert (compare_posfrac (1,2) (2,4) == 0);;
assert (compare_posfrac (1,2) (1,3) == 1);;
assert (compare_posfrac (1,2) (2,3) == -1);;