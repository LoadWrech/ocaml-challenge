let consecutive_even (l : int list) : int =
  let rec cnt max lst crntMax = 
    match lst with
    | [] -> max
    | n::m -> 
      if n mod 2 = 0 then
        if (crntMax+1) > max then
          cnt (crntMax+1) m (crntMax+1)
        else
          cnt max m (crntMax+1)
      else
        cnt max m 0
  in
  cnt 0 l 0
;;

assert(consecutive_even [] = 0);;
assert(consecutive_even [1;2;3;4;5;6] = 1);; 
assert(consecutive_even [1;2;2;3;4;5] = 2);;
assert(consecutive_even [1;2;3;4;2;5] = 2);;
assert(consecutive_even [1;2;2;3;4;2;5] = 2);;
assert(consecutive_even [1;2;2;2;3;4;2;6;5] = 3);;