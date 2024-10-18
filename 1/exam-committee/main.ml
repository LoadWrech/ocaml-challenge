type vote = StrongReject | WeakReject | WeakAccept | StrongAccept


let accept (x : vote) : int = 
  if(x = WeakAccept || x = StrongAccept) then
    1
else 0;;

let rejection (x : vote) : bool = 
  if(x = StrongReject || x = WeakReject) then true
  else false;;

let decide_exam (a : vote) (b : vote) (c : vote) : bool =
  let count = accept(a) + accept(b) + accept(c) in
  let rej = rejection(a) || rejection(b) || rejection(c) in
  
  if(count >= 2 && not rej) then true
  else false;;


assert(decide_exam WeakAccept WeakAccept StrongAccept = true);;
assert(decide_exam WeakAccept WeakReject StrongAccept = false);;