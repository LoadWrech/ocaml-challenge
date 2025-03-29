let rnd_list (n : int) (b : int) : int list =
  let rec rnd_rec acc n b =
    if n = 0 then
      acc
    else
      rnd_rec (Random.int(b)::acc) (n-1) b
  in
  rnd_rec [] n b;;