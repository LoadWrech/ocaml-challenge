let dice (a : int) : int =
  let perc = 100 - a in
    if perc >= 0 then
      let rand = Random.int(100) in
      let n = perc / 5 in
        if rand < a then
          6
        else if rand <= a + n then
          1
        else if rand <= a + n * 2 then
          2
        else if rand <= a + n * 3 then
          3
        else if rand <= a + n * 4 then
          4
        else
          5
    else
      failwith("number too big");;