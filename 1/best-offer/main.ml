let grt2 (a : int option) (b : int option) : int option = 
  match (a, b) with
  | (_, None) -> a
  | (None, _) -> b
  | (Some x, Some y) ->
    if(x > y) then a
    else b
;;

let grt (a : int option) (b : int option) (c : int option) : int option =
  match(a, b, c) with
  | (None, Some l, Some g) -> grt2 b c
  | (Some l, Some g, None) -> grt2 a b
  | (Some l, None, Some g) -> grt2 a c
  | (None, None, Some g) -> grt2 a c
  | (Some l, None, None) -> grt2 a c
  | (None, Some l, None) -> grt2 b c
  | (Some l, Some g, Some k) -> grt2 (grt2 a b) c
  | _ -> None
;;



let best_offer (a : int option) (b : int option) (c : int option) : int option = 
    if(a = None && b = None && c = None) then None
    else grt a b c;;


assert(best_offer (Some 100) (Some 200) (Some 150) = Some 200);;

assert(best_offer (Some 100) None (Some 150) = Some 150);;

assert(best_offer None None None = None);;

assert(best_offer None (Some 300) None = Some 300);;