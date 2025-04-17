let rec gcd (a : int) (b : int) : int =
    let max = if a > b then a else b in
        let min = if a <= b then a else b in
            if max <> 0 then
                if min = 0 then
                    a
                else
                    gcd (min) (max mod min)
            else
                failwith("can't compute 0")
;;

let rec gcd2 (a : int) (b : int) : int =
    if b = 0 then
        a
    else
        gcd2 (b) (a mod b)
;;