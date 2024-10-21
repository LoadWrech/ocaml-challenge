let movie_rating (a : int) (b : int) (c : int) : string = 
  if(a > 5 || a < 1 || b > 5 || b < 1 || c > 5 || c < 1) then
    failwith "Rating Overflow"
  else
    if((a + b + c) == 15) then
      "Masterpiece"
    else
      if((a + b + c) == 14) then
        "Highly Recommended"
      else 
        if((a + b + c) >= 11 && ((a >= 4 && b >= 4) || (a >= 4 && c >= 4) || (b >= 4 && c >= 4))) then
          "Recommended"
        else
          "Mixed Reviews";;
          
assert(movie_rating 5 5 5 = "Masterpiece");;
assert(movie_rating 5 4 5 = "Highly Recommended");;
assert(movie_rating 5 3 5 = "Recommended");;
assert(movie_rating 4 3 4 = "Recommended");;
assert(movie_rating 1 3 5 = "Mixed Reviews");;
