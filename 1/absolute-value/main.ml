let abs (a) =
    if (a < 0) then 
        (-a)
    else 
        a;;


let abs2 (x : int) : int = 
    match x with
    | n when n > 0 -> n
    | n -> -n;;