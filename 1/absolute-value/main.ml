let f (a : int) : int = if a < 0 then
    -a
  else
    a;;

assert(f (-1) = 1);;
assert(f 2 = 2);;
assert(f 0 = 0);;