let guess5 (a : int) : bool * int = 
  let r = Random.int(5) + 1 in
  if(a >= 1 && a <= 5) then
    if(r = a) then 
      (true, a)
    else
      (false, a) 
  else 
    failwith "Not in range";;