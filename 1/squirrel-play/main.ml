type season = Spring | Summer | Autumn | Winter

let squirrel_play (n : int) (s : season) : bool = 
  let max = 
    if s = Summer then
      35
    else 
      30
    in 
  if n >= 15 && n <= max then
    true
  else
    false;;

assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;