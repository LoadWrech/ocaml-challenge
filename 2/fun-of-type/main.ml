let f1 (x : int) : bool =
  true;;

let f2 (x : bool) : int =
  0;;

let f3 (x : int) : int * bool =
  (0, true);;

let f4 ((a : int), (b : bool)) : int = 
  0;;

let f5 (a : int) : int -> int =
  fun x -> x + 5;;

let f6 (a : int) : int -> bool =
  fun x -> true;;

let f7 (b : bool) : int -> bool =
  fun x -> true;;

let f8 (b : bool) : bool -> int =
  fun x -> 0;;

let f9 (b : bool) : int -> int =
  fun x ->
    if b then
      0
    else
      1;;

let f10 (f : int -> int) : int =
  f 10;;

let f11 (f : int -> bool) : int =
  if f 0 then
    1
  else
    0;;

let f12 (f : bool -> int) : int =
  if f true = 1 then
    0
  else
    1;;

let f13 (f : int -> bool) : bool =
  if f 1 then
    true
  else
    false;;

let f14 (f : bool -> bool) : int =
  if f true then
    1
  else
    0;;

let f15 (a : int) ((b : int), (c : int)) : int =
  if b + c = a then
    1
  else
    0;;

let f16 (a : int) : (int -> (int -> int)) = 
  fun x -> 
    fun y -> 5;;

let f17 (f : int -> int) : int -> int =
  if f 5 = 0 then
    fun x -> 0
  else
    fun x -> 1;;

let f18 (f : (int -> int) -> int) : int =
  if f (fun x -> 5) = 5 then
    0
  else
    1;;

let f19 (f : int -> int) : (bool -> bool) =
  if f 1 = 0 then
    fun x -> false
  else
    fun x -> true;;

let f20 (f : int -> bool) : (bool -> int) =
  if f 5 then
    fun x -> 1
  else
    fun x -> 0;;