let rec is_perforated (l : int list) : bool =
  match l with
    | [] -> true
    | [n] -> true
    | n::(m::li) when abs(m-n) > 1 -> true && is_perforated (m::li)
    | _ -> false;;

  assert(is_perforated []);;
  assert(is_perforated [1]);;
  assert(is_perforated [1;2] = false);;
  assert(is_perforated [1;3]);;
  assert(is_perforated [1;5;2]);;
  assert(is_perforated [1;3;2] = false);;
  assert(is_perforated [1;4;2;0]);;
  assert(is_perforated [1;3;2;0] = false);;
  assert(is_perforated [1;3;5;2;4;7;3;1]);;