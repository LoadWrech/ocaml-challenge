type weekday = Mo | Tu | We | Th | Fr

type course = ALF | LIP

let isLecture (d : weekday) (c : course) : bool =
  match (d, c) with
  | (Th, _) -> true
  | (Tu, ALF) -> true
  | (Fr, ALF) -> true
  | (We, LIP) -> true
  | _ -> false;;

assert(isLecture Mo LIP = false);;
assert(isLecture Th LIP = true);;
assert(isLecture We ALF = false);;
