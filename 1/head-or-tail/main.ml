let hot (r : unit) : string = 
  if(Random.int(2) = 0) then 
    "head"
  else
    "tail";;

assert(hot () = "head");;