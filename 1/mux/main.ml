let mux1(s0, a, b) = 
    if(s0) then
        a
    else
        b;;

let mux2(s0, a, b) = (s0 && a) || (not s0 && b);;


let mux3(s0, a, b) = 
    match(s0) with
    |   false -> b
    |   _ -> a;;


let mux4(s0, s1, a0, a1, a2, a3) = 
    if(not s0) then
        mux2(not s1, a0, a1)
    else
        mux1(not s1, a2, a3);;