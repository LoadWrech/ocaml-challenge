let is_even (a : int) : bool = 
  match (a mod 2) with
  | 0 -> true
  | _ -> false;;

let win (a : int) (b : int) : int = 
  if a > 0 && a <= 5 then 
    if b > 0 && b <= 5 then
      if is_even (a + b) then 
        1
      else
        -1
    else
      1
  else
    if b <= 0 && b > 5 then
      0
    else
      -1;;