type card = Joker | Val of int;;

let win (player : card) (dealer : card) : bool = 
  if((player <> Joker && (player < Val 1 || player > Val 10))
    || dealer <> Joker && (dealer < Val 1 || dealer > Val 10)) then 
    failwith "Not in range"
  else
    match (player, dealer) with
    | (Joker, Joker) -> false
    | (Joker, __) -> true
    | (_, Joker) -> false
    | (_, _) -> if(player > dealer) then
        true
        else 
          false;;


assert(win Joker (Val 5) = true);;
assert(win (Val 5) Joker = false);;
assert(win (Val 2) (Val 5) = false);;
assert(win Joker Joker = false);;
assert(win (Val 9) (Val 5) = true);;
assert(win (Val 12) (Val 5));;