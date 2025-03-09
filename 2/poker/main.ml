type suit = S | H | D | C;;
type card = Card of int * suit;;

let genCard () : card =
  let num = (Random.int(10) + 1) in
  let s = match Random.int(4) with
  | 0 -> S
  | 1 -> H
  | 2 -> D
  | _ -> C
  in
  Card (num, s)


let rndHand () : card * card * card * card * card =
  let a = genCard () in
  let b = genCard () in
  let c = genCard () in
  let d = genCard () in
  let e = genCard () in

  (a, b, c, d, e)
;;


let eqNum (a : int) (b : int) (c : int) (d : int) : bool =
  if a = b && a = c && a = d then true
  else false
;;

let neqSuit (a : suit) (b : suit) (c : suit) (d : suit) : bool =
  if(a <> b && a <> c && a <> d &&
    b <> c && c <> d &&
    c <> d) then
      true
  else
    false
;;


let cmpCards (a : card) (b : card) (c : card) (d : card) : bool =
  let Card (x1, s1) = a in
  let Card (x2, s2) = b in
  let Card (x3, s3) = c in
  let Card (x4, s4) = d in
  if eqNum x1 x2 x3 x4 && neqSuit s1 s2 s3 s4 then
    true
  else
    false
;;


let poker (a : card) (b : card) (c : card) (d : card) (e : card) : bool =

  if ( cmpCards a b c d
    || cmpCards a b c e
    || cmpCards a b d e
    || cmpCards a c d e
    || cmpCards b c d e
  ) then
    true
  else
    false
;;

let (a, b, c, d, e) = rndHand () in
assert(poker a b c d e);;