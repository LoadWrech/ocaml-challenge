let greater (a : 'a) (b : 'a) : 'a = 
  if a >= b then
    a
  else
    b;;

let less (a : 'a) (b : 'a) : 'a = 
  if a < b then
    a
  else
    b;;

let minmax3 (a : 'a) (b : 'a) (c : 'a) : ('a * 'a) =
  ((less (less a b) c), (greater (greater a b) c));;

assert(minmax3 1 2 3 = (1, 3));;
assert(minmax3 3 2 1 = (1, 3));;