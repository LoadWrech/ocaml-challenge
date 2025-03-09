let consensus3 ((f, g, h) : ('a -> 'b) * ('a -> 'b) * ('a -> 'b)) (x : 'a) : 'b option =

  let v0 = f x in
  let v1 = g x in
  let v2 = h x in
  if v0 = v1 || v0 = v2 then
    Some v0
  else if v1 = v2 then
    Some v1
  else
    None;;


assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 1 = Some 5);;
assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 2 = Some 2);;
assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 3 = None);;
assert (
  try
    consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 0
    |> ignore; false
  with _ -> true);;

assert (consensus3 ((fun x -> (1 / x)), (fun y -> y + 1), (fun z -> z + 2)) 0 = None);;

(* Boh non funziona la roba delle eccezioni *)