type card = Joker | Val of int

let getValue (a : card) : int option =
  match a with
  | Joker -> None
  | Val n -> Some n;;

let inRange (a : card) : bool =
  if getValue a <= Some 10 && getValue a >= Some 1 then
    true
  else if getValue a = None then
    true
  else
    false;;

let win (a : card) (b : card) : bool = 
  if inRange a && inRange b then
    if getValue a = None && getValue b != None then
      true
    else
      if getValue a != None && getValue b = None then
        false
      else if getValue a > getValue b then
        true
      else
        false
  else
    failwith("not valid");;


assert (win (Val 10) (Val 5) = true);;
assert (win (Val 7) (Val 3) = true);;
assert (win (Val 6) (Val 6) = false);;
assert (win (Val 2) (Val 9) = false);;
assert (win Joker (Val 1) = true);;
assert (win Joker (Val 10) = true);;
assert (win (Val 5) Joker = false);;
assert (win (Val 9) Joker = false);;
assert (win Joker Joker = false);;