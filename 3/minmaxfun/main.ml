type 'a option = Some of 'a | None

let rec minfun (f : int -> 'a) (a : int) (b : int) (c : 'a) : 'a =
  if a > b then
    c
  else if f a < c then
    minfun f (a + 1) b (f a)
  else
    minfun f (a + 1) b c;;

let rec maxfun (f : int -> 'a) (a : int) (b : int) (c : 'a) : 'a =
  if a > b then
    c
  else if f a > c then
    maxfun f (a + 1) b (f a)
  else
    maxfun f (a + 1) b c;;

let minmaxfun (f : int -> 'a) (a : int) (b : int) : ('a * 'a) option =
  if a > b then
    None
  else 
    Some (minfun f a b (f a), maxfun f a b (f a));;


assert (minmaxfun (fun x -> x) (-2) 5 = Some (-2,5));;
assert (minmaxfun (fun x -> x) 5 (-2) = None);;
assert (minmaxfun (fun x -> x) 5 5 = Some (5,5));;
assert (minmaxfun (fun x -> x * x) (-2) 5 = Some (0,25));;

let curve x = x |> Float.of_int |> fun x -> x ** 3.0 -. 3.0 *. x;;
let arccos x = x |> Float.of_int |> Float.acos;;

assert (minmaxfun curve (-2) 2 = Some (-2.0,2.0));;
assert (minmaxfun arccos (-1) 1 = Some (0., Float.pi));;