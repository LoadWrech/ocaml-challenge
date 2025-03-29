let rec has_one (n : int) : bool =
  if n < 0 then
    failwith("not positive")
  else if n mod 10 = 1 then
    true
  else if n / 10 > 0 then
    has_one (n / 10)
  else
    false;;

assert(has_one 10 = true);;
assert(has_one 220 = false);;
assert(has_one 911 = true);;
assert(has_one 451 = true);;
assert(try has_one (-1) |> fun _ -> false with _ -> true);;