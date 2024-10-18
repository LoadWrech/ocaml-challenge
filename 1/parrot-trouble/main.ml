let parrot_trouble(a : bool) (b : int) : bool option = 
    if(b < 0 || b > 23) then 
        None
    else if(a) then
        if(b < 7 || b > 20) then
            Some true
        else
            Some false
    else
        Some false;;