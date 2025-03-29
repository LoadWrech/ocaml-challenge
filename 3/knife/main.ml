let reverse (l : 'a list) : 'a list =
  let rec aux acc = function
    | [] -> acc
    | n::m -> aux (n::acc) m
  in
  aux [] l;;

let rec knife (l : 'a list) (a : int) : 'a list * 'a list =
  
  let rec aux acc l n = 
    if n < 0 then
      [], l
    else
      if n = 0 then
        reverse acc, l
      else
        match l with
          | [] -> acc, []
          | m::o -> aux (m::acc) o (n-1)
  in
  aux [] l a;;

assert (knife [1;2;3;4;5;6] 3 = ([1;2;3], [4;5;6]));;
assert (knife ['b';'r';'e';'a';'d'] 3  = (['b';'r';'e'], ['a';'d']));;
assert (knife [] 0 = ([], []));;
assert (knife ["miss"; "me"] 2  = (["miss"; "me"], []));;
assert (knife ["oops"] (-1)  = ([], ["oops"]));;