let min (a : 'a) (b : 'a) (c : 'a) : 'a = 
  if(a < b && a < c) then a
  else if(b < a && b < c) then b
  else c;;

let max (a : 'a) (b : 'a) (c : 'a) : 'a = 
  if(a > b && a > c) then a
  else if(b > c && b > a) then b
  else c;;

let minmax3 (a : 'a) (b : 'a) (c : 'a) : 'a * 'a = 
  (min a b c, max a b c);;


assert(minmax3 5 6 2 = (2, 6));;
assert(minmax3 1 3 2 = (1, 3));;
assert(minmax3 5 6 7 = (5, 7));;
assert(minmax3 2 6 2 = (2, 6));;
assert(minmax3 8 8 8 = (8, 8));;