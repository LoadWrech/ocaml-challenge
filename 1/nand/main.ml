let nand (a : bool) (b: bool) : bool = not (a && b);;


let nand2 (a : bool) (b: bool) : bool = 
    if(a && b) then
        false
    else
        true;;


let nand3 (a : bool) (b: bool) : bool =
    match (a, b) with
    |   (true, true) -> false
    |   _ -> true;;

let nand4 (a : bool) (b : bool) : bool = 
    match (a && b) with
        | true -> false
        | false -> true;;
