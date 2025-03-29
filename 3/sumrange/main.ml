let rec sumrange (a : int) (b : int) : int =
  if a = b then
    b
  else if a < b then
    b + sumrange a (b - 1)
  else
    0;;

assert (sumrange 0 1 = 1);;
assert (sumrange 1 3 = 6);;
assert (sumrange 3 2 = 0);;