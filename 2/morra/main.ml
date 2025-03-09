type winner = Player | Computer | Tie ;;

let win ((hp : int), (gp : int)) : (int * int) * winner =
  let (hc, gc) = (Random.int(5), Random.int(11)) in
  let correctGuess = hc + hp in
  if correctGuess = gp then
    ((hc, gc), Player)
  else if correctGuess = gc then
    ((hc, gc), Computer)
  else
    ((hc, gc), Tie);;