let inv_list (l : 'a list) : 'a list =
  let rec aux acc = function
    | [] -> acc
    | n::m -> aux (n::acc) m 

  in
  aux [] l;;

let is_palindrome (a : 'a list) : bool =
  let rev_list = inv_list a in
  if rev_list = a then
    true
  else
    false;;

assert(is_palindrome []);;
assert(is_palindrome ['a';'n';'n';'a']);;
assert(is_palindrome ['r';'a';'d';'a';'r']);;
assert(is_palindrome ['a';'n';'n';'e'] = false);;
assert(is_palindrome ['z';'a';'n';'n';'a'] = false);;