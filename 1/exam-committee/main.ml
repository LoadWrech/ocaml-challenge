type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let reject (a : vote) (b : vote) (c : vote) : bool = 
  if a = StrongReject || b = StrongReject || c = StrongReject then
    true
  else
    false;;

let twoRej (a : vote) (b : vote) (c : vote) : bool = 
  if a = WeakReject && b = WeakReject ||
    a = WeakReject && c = WeakReject ||
    b = WeakReject && c = WeakReject then
      true
  else
    false;;


let decide_exam (a : vote) (b : vote) (c : vote) : bool = 
  if reject a b c then
    false
  else if twoRej a b c then
    false
  else
    true;;


assert (decide_exam StrongAccept WeakAccept WeakReject = true);;
assert (decide_exam WeakAccept StrongAccept StrongReject = false);;
assert (decide_exam WeakAccept StrongAccept WeakReject = true);;
assert (decide_exam StrongReject WeakAccept WeakAccept = false);;
assert (decide_exam WeakAccept StrongReject WeakAccept = false);;
assert (decide_exam WeakAccept WeakAccept StrongReject = false);;
assert (decide_exam WeakAccept WeakAccept WeakReject = true);;
assert (decide_exam WeakReject WeakReject WeakReject = false);;
assert (decide_exam StrongReject StrongReject StrongReject = false);;
assert (decide_exam StrongAccept StrongAccept StrongAccept = true);;
assert (decide_exam WeakAccept WeakAccept WeakAccept = true);;
