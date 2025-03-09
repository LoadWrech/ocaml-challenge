type suit = S | H | D | C;;
type card = Card of int * suit;;

let genCard () : card =
  let num = (Random.int(5) + 1) in
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

let min (a : int) (b : int) : (int * int) =
  if a < b then
    (a, b)
  else
    (b, a);;

let straight ((a : card), (b : card), (c : card), (d : card), (e : card)) : bool =
  let Card (n1, s1) = a in
  let Card (n2, s2) = b in
  let Card (n3, s3) = c in
  let Card (n4, s4) = d in
  let Card (n5, s5) = e in
  let (n1, n2) = min n1 n2 in
  let (n1, n3) = min n1 n3 in
  let (n1, n4) = min n1 n4 in
  let (n1, n5) = min n1 n5 in
  let (n2, n3) = min n2 n3 in
  let (n2, n4) = min n2 n4 in
  let (n2, n5) = min n2 n5 in
  let (n3, n4) = min n3 n4 in
  let (n3, n5) = min n3 n5 in
  let (n4, n5) = min n4 n5 in
  let m = 10 in
  if (n1 + 1) mod m = n2 mod m &&
    (n2 + 1) mod m = n3 mod m &&
    (n3 + 1) mod m = n4 mod m &&
    (n4 + 1) mod m = n5 mod m then
    true
  else
    false
;;

