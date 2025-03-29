let rec rec_list (a : int list) : string =
  match a with
  | [] -> "]"
  | [n] -> string_of_int n ^ "]"
  | n::m -> string_of_int n ^ ";" ^ rec_list m;;

  let string_of_list (a : int list) : string =
    "[" ^
    rec_list a;;
    
  