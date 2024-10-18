type season = Spring | Summer | Autumn | Winter

let squirrel_play (a : int) (b : season) : bool = 
  if(b == Summer) then
    if(a >= 15 && a <= 35) then 
      true
    else false 
  else if(a >= 15 && a <= 30) then 
    true
  else false;; 



assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;