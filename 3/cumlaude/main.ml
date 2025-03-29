type grade = Val of int | CumLaude;;

let is_valid (a : grade) : bool =
  match a with
  | Val n when n >= 18 -> true
  | CumLaude -> true
  | _ -> false;;

let int_of_grade (a : grade) : int =
  match a with
  | Val n -> n
  | CumLaude -> 32;;

let avg (l : grade list) : float =
  let rec aux acc lst n =
    match lst with
      | [] -> acc /. n
      | m::o -> 
        if is_valid m then
           aux (acc +. float_of_int(int_of_grade m)) o (float_of_int(int_of_float n+1))
        else
          failwith("not valid")
  in
  aux 0. l 0.;;


let avg_norec (l : grade list) : float =
  l |> List.filter is_valid
    |> List.map int_of_grade
    |> fun l -> 
      let sum = 
        List.fold_left (+) 0 l 
      in
      let count =
        List.length l
      in
      if count = 0 then
        failwith("no valid grades")
      else
        float_of_int sum /. float_of_int count;;

assert(avg [Val 24; Val 27; Val 18; Val 29; CumLaude] = 26.);;
assert (avg_norec [Val 30; Val 15; Val 28; CumLaude] = 30.0);;
assert (avg_norec [Val 25; Val 29; CumLaude] = 28.6666666666666679);;