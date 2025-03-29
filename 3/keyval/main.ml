
let apply (a : ('a * 'b) list) (b : 'a) : 'b option =
  match List.find_opt (fun (key, _) -> key = b) a with
  | None -> None
  | Some (c, d) -> Some d
;;

let f0 = [(1, 7); (2, 3); (4, 5); (5, 6); (7, 9); (2, 4); (8, 3)];;
assert(apply f0 4 = Some 5);;
assert(apply f0 6 = None);;
assert(apply f0 2 = Some 3);;



let mkfun (a : ('a * 'b) list) : ('a * 'b) list =
  (* List.fold_left (funzione con 2 parametri) acc listaDiArgs *)
  List.rev (
    List.fold_left (
      fun x y ->
        if List.mem_assoc (fst y) x then
          x
        else
          y::x
    )
    [] (* Questo è x, l'accumulatore *)
    a (* Questo è y *)
  )
;;

assert(mkfun [(1,7);(2,3)] = [(1,7);(2,3)]);;
assert(mkfun [(1,7);(1,3)] = [(1,7)]);;
assert(mkfun [(1,7);(2,3);(1,5)] = [(1,7);(2,3)]);;
assert(mkfun [(1,7);(2,3);(1,5);(1,8)] = [(1,7);(2,3)]);;
assert(mkfun [(1,7);(2,3);(1,5);(1,8);(2,4)] = [(1,7);(2,3)]);;