let max_nat (a : int) (b : int) : int = 
  if a >= 0 && b >= 0 then
    if a >= b then
      a
    else
      b
  else
    failwith("not a natural number");;

assert(max_nat 2 5 = 5);;
assert(max_nat 5 2 = 5);;
assert(try max_nat (-2) 5 |> fun _ -> false with _ -> true);;
assert(try max_nat 2 (-5) |> fun _ -> false with _ -> true);;
assert(try max_nat (-2) (-5) |> fun _ -> false with _ -> true);;