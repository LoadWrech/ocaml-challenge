let f1 (x : int) : int =
  if x >= 0 then
    0
  else
    failwith("not positive");;

let f2 (x : int) : int =
  if x >= 0 && x < 3 then
    1
  else
    0;;

let f3 (x : int) : int = 
  if x >= 0 then
    if x <= 100 then
      1
    else
      0
  else
    failwith("not positive");;

let f4 (x : int) : int = 
  if x >= 0 then
    0
  else
    failwith("not positive");;

let f5 (x : int) : int =
  if x >= 0 then
    1
  else
    failwith("not positive");;

let f6 (x : int) : int =
  if x >= 0 then
    if x mod 2 = 0 then
      1
    else
      0
  else
    failwith("not positive");;

let f7 (x : int) : int =
  if x >= 0 then
    1
  else
    failwith("not positive");;

let f8 (x : int) : int =
  if x >= 0 then
    1
  else
    failwith("not positive");;

let f9 (x : int) : int =
  if x >= 0 then
    1
  else
    failwith("not positive");;


let f10 (x : int) : int =
  if x >= 0 then
    if x > 7 && x < 20 || x * 2 > 7 && x * 2 < 20 then
      1
    else
      0
  else
    failwith("not positive");;
(* y = 1 | 2, x -> 4 min,  *)


let f11 (x : int) : int =
  if x >= 0 then
    if x < 50 && x mod 2 = 0 then
      1
    else
      0
  else
    failwith("not positive");;


let f12 (x : int) : int =
  if x >= 0 then
    if x > 0 && x < 50 then
      1
    else
      0
  else
    failwith("not positive");;


let f13 (x : int) : int =
  if x >= 0 then
    if x <= 12 then
      1
    else
      0
  else
    failwith("not positive");;

  
let f14 (x : int) : int =
  if x >= 0 then
    if x <= 2 then
      1
    else
      0
  else
    failwith("not positive");;


let f15 (x : int) : int =
  if x >= 0 then
    if x = 0 then
      0
    else
      1
  else
    failwith("not positive");;