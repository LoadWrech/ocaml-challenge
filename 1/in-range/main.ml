let in_range (x : 'a) (a : 'a) (b : 'a) : bool = 
  if x >= a && x <= b then
    true
  else
    false;;


assert(in_range 5 2 7 = true);;
assert(in_range 'b' 'a' 'z' = true);;
assert(in_range 'a' 'b' 'z' = false);;