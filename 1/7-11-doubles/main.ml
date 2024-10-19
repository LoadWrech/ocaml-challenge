let seven_eleven_doubles (u : unit) : bool * int * int = 
  let d1 = 1 + Random.int(6) in
  let d2 = 1 + Random.int(6) in
  if(d1 + d2 = 7 || d1 + d2 = 11 || d1 = d2) then
    (true, d1, d2)
  else
    (false, d1, d2);;