let guess5 (a : int) : bool * int = 
  if a >= 1 && a <= 5 then
    if Random.int(5) + 1 = a then
      (true, a)
    else
      (false, a)
  else
    failwith("not in range");;