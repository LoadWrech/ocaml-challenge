let f (x : int option) : int = 
  match x with
|  None -> 0
| Some x -> x;;

let g (x : int) : int option = 
  if x = 0 then
    None
  else
    Some x;;

let greater (a : int) (b : int) : int = 
  if a >= b then
    a
  else
    b;;


let best_offer (a : int option) (b : int option) (c : int option) : int option = 
  let x = f a in
  let y = f b in
  let z = f c in
  g (greater (greater x y) z);; 


assert(best_offer (Some 100) (Some 200) (Some 150) = Some 200);;

assert(best_offer (Some 100) None (Some 150) = Some 150);;

assert(best_offer None None None = None);;

assert(best_offer None (Some 300) None = Some 300);;