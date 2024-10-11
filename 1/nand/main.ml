let nand1(a, b) = not (a && b);;


let nand2(a, b) = 
bool =
    if(a && b) then
        false
    else
        true;;


let nand3(a, b) = 
bool =
    match (a && b) with
    |   true -> false
    |   _ -> true;;
