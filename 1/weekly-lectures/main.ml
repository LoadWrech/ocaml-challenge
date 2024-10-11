type weekday = Mo | Tu | We | Th | Fr

type course = ALF | LIP

let isLecture(a, b) =
    if(a == Th) then
        if(b == ALF || b == LIP) then 
            true
        else
            false
    else if(a == Tu || a == Fr) then
        if(b == ALF) then
            true
        else
            false
    else if(a == We || a == Th) then
        if(b == LIP) then
            true
        else
            false
    else
        false;;