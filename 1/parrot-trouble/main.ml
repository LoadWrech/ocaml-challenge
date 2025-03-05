let parrot_trouble (b : bool) (n : int) : bool option = 
  if n >= 0 && n < 24 then
    if b && (n <= 7 || n >= 20) then
      Some true
    else
      Some false
  else
    None;;

assert (parrot_trouble true 6 = Some true);;
assert (parrot_trouble true 21 = Some true);;
assert (parrot_trouble false 5 = Some false);;
assert (parrot_trouble false 10 = Some false);;
assert (parrot_trouble true (-1) = None);;
assert (parrot_trouble true 24 = None);;
