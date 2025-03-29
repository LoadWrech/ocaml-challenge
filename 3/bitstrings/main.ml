type bitstring = E | Z of bitstring | U of bitstring;;

let rec string_of_bitstring (str : bitstring) : string =
  match str with
  | E -> ""
  | Z s -> "0" ^ string_of_bitstring s
  | U s -> "1" ^ string_of_bitstring s
;;

let rec len (str : bitstring) : int =
  match str with
  | E -> 0
  | Z s -> 1 + len (s)
  | U s -> 1 + len (s)
;;

let rec countZ (str : bitstring) : int =
  match str with
  | Z s -> 1 + countZ s
  | E -> 0
  | U s -> 0 + countZ s
;;

let rec countU (str : bitstring) : int =
  match str with
  | U s -> 1 + countU s
  | E -> 0
  | Z s -> 0 + countU s
;;

let rec concat (str1 : bitstring) (str2 : bitstring) : bitstring =

  match str1 with
  | E -> str2
  | U s -> U (concat s str2)
  | Z s -> Z (concat s str2)
;;

let rec equals (s1 : bitstring) (s2 : bitstring) : bool =
  match (s1, s2) with
  | (E, E) -> true
  | (Z s, Z s') -> true && equals s s'
  | (U s, U s') -> true && equals s s'
  | _ -> false
;;

let tl (s : bitstring) : bitstring =
  match s with
  | E -> E
  | Z i -> i
  | U i -> i
;;

let rec prefix (s1 : bitstring) (s2 : bitstring) : bool =
  match s1 with
  | E -> true
  | Z s -> (match s2 with
          | Z l -> true && prefix s l
          | _ -> false)
  | U s -> (match s2 with
          | U l -> true && prefix s l
          | _ -> false)
;;

assert(prefix (Z (U (Z E))) (Z (U (Z (U (Z (U E)))))));;
assert(prefix (Z (U (Z E))) (Z (U E)) = false);;
assert(prefix (Z (U (E))) (Z (U E)));;


(* let rec subfix (s1 : bitstring) (s2 : bitstring) : bool =
  match s1, s2 with
  | (E, _) -> true
  | (Z s, Z f) -> prefix s f
  | (U s, U f) -> prefix s f
  | _ ->
    match s1 with
    | U s -> false && subfix s s2
    | Z s -> false && subfix s s2
    | E -> false
;; *)


(* let rec subfix (ss : bitstring) (str : bitstring) : bool =
  match ss with
  | E -> true
  | Z s -> (match str with
            | E -> false
            | Z s' -> true && subfix s s'
            | U s' -> subfix ss s'
            )
  | U s -> (match str with
            | E -> false
            | Z s' -> subfix ss s'
            | U s' -> true && subfix s s'
            )
;; *)
(* 
let rec subfix (ss : bitstring) (str : bitstring) : bool =
  match ss, str with
  | E, _ -> true
  | _, E -> false
  | Z s, Z s' -> subfix s s'
  | U s, U s' -> subfix s s'
  | _, Z s' -> subfix ss s'
  | _, U s' -> subfix ss s'
;; *)
let rec subfix (ss : bitstring) (str : bitstring) : bool =
  match str with
  | E -> ss = E
  | Z s' | U s' -> (ss = str) || subfix ss s' 
;;
assert(subfix (U (U E)) (U (Z (Z (U (E))))) = false);;