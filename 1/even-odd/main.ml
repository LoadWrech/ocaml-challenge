let is_even1 a = if (a mod 2 = 0) then 
    true
else
    false;;

let is_even2 a = match(a mod 2) with
|    0 -> (true)
|    _ -> (false) (* Se metto 1 mi dice case not matched con il 2 *)
;;


let win (a, b) = 
if (a < 6 && a > 0) then (* Se a ha scelto un numero sbagliato controllo cosa ha scelto b *)
    if(b < 6 && b > 0) then (* Se b ha scelto un numero sbagliato vince a *)
        if(is_even1(a + b)) then 1 (* Se la somma è pari vince a, altrimenti b *)
        else (-1)
    else 1
else
    if(b < 6 && b > 0) then (* b ha scelto un numero corretto *)
        (-1)
    else
        0;; (* Se entrambi hanno scelto numeri sbagliati *)