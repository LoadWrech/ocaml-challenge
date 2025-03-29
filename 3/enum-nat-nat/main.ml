let enum_nat_nat (n : int) : (int * int) = 
  let rec aux acc value con =
    if acc = value then
      (con, acc)
    else if acc > value then
      (con - 1, acc - con)
    else
      aux (acc + (con + 1)) value (con+1)
  in
  let m = aux 0 n 0 in
  match m with
  | (i, j) -> 
    let rec last first second pos =
      if pos = 0 then
        (first, second)
      else
        last (first + 1) (second - 1) (pos - 1)
    in
    last 0 i (n-j)
;;