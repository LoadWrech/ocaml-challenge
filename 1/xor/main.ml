let xor1 (a : bool) (b: bool) : bool = (not a && b) || (a && not b);;


let xor2 (a : bool) (b: bool) : bool = 
if (a == b) then false

else true;;


let xor3 (a : bool) (b: bool) : bool = 
    match (a == b) with 
    | true -> false
    | _ -> true;;


let xor4 : bool -> bool -> bool = 
    fun b1 b2 -> (not b1 && b2) || (b1 && not b2);;


assert(xor4 true true = false);;