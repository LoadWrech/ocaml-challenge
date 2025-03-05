let accepted (a : int) (b : int) (c : int) : bool = 
  if (a >= 0 && a <= 5 &&
    b >= 0 && b <= 5 &&
    c >= 0 && c <= 5) then
      true
  else
    false;;

let movie_rating (a : int) (b : int) (c : int) : string = 
  if accepted a b c then
    if a + b + c = 15 then
      "Masterpiece"
    else
      if a + b + c = 14 then
        "Highly Recommended"
      else 
        if a >= 4 && b >= 4 && c >= 3 || 
          a >= 3 && b >= 4 && c >= 4 || 
          a >= 4 && b >= 3 && c >= 4 then
            "Recommended"
        else
          "Mixed Reviews"
  else
    failwith("an error occured");;

assert(movie_rating 5 5 5 = "Masterpiece");;
assert(movie_rating 5 4 5 = "Highly Recommended");;
assert(movie_rating 4 5 5 = "Highly Recommended");;
assert(movie_rating 5 5 4 = "Highly Recommended");;
assert(movie_rating 5 3 5 = "Recommended");;
assert(movie_rating 1 4 5 = "Mixed Reviews");;