(* Tells if a given number is a perfect square *)
let is_perfect_square (n : int) : bool =
  let sq = int_of_float(sqrt (float_of_int n)) in
    sq * sq = n
;;

(* Returns the element at a given index n (starting from 0) 
from a given list *)
let rec element (l : int list) (n : int) : int =
  match l with
  | [] -> failwith("empty list")
  | m::li -> 
    if n = 0 then
      m
    else
      element li (n-1)
;;

(* Removes the element at the given index n (starting from 0) 
from the list and returns a new list without that element. *)
let rec remove_element (n : int) (l : int list) : int list =
  match l with
  | [] -> failwith("empty list")
  | m::li -> 
    if n = 0 then
      li
    else
      m::(remove_element (n-1) li)
;;

(* In the context of a matrix, given as a single list of elements, 
this function removes the specified column and row from the
 matrix and returns the resulting matrix as a list of integers. *)
let rec remove_lines (e : int) (sz : int) (ni : int) (l : int list) : int list =
  if ni < sz - 1 then
    remove_lines e sz (ni+1) (remove_element (e + sz*(sz-1) - ni*sz) l)
  else if ni = (sz * 2 - 2) then
    remove_element 0 l
  else
    remove_lines e sz (ni+1) (remove_element ((sz*2 - 1) - ni - 1) l)
;;

(* Main function that computes the determinant of a matrix.
First, it checks if the matrix is square. Then, it determines 
its size (e.g., 3×3, 4×4, etc.), and the function splits into 
two cases:
  Base case: Returns the determinant of a 2×2 matrix.
  
  Recursive case: Depending on the iteration number (ni), the function alternates the sign of the current computation. If the current element is in an even position, it remains positive; otherwise, it becomes negative. Then, it is multiplied by the determinant of the remaining matrix, thanks to the recursive call of this function and the remove_lines function, which reduces the matrix size.
  Finally, if all elements of the row have been processed 
  (i.e., the iteration number is greater than or equal to the 
  matrix size), it returns the accumulated result. Otherwise, 
  it recursively calls itself, incrementing the iteration number 
  and adding the computed parts of the determinant. *)
let rec rec_det (l : int list) (ni : int) : int =
  if is_perfect_square (List.length l) then
    let sz = int_of_float (sqrt (float_of_int (List.length l))) in
      
      if sz = 2 then (* Base case *)
        (element l 0) * (element l 3) - (element l 1) * (element l 2)
      
      else (* Recursive case *)
        let part = 
          if ni mod 2 = 1 then
            - (element l ni) * rec_det (remove_lines ni sz 0 l) 0
          else
            (element l ni) * rec_det (remove_lines ni sz 0 l) 0
          in
        if ni < sz - 1 then
          part + rec_det l (ni + 1)
        else
          part

  else
    failwith("can't compute rec_det on a non-quadratic matrix")
;;

(* Calls the recursive determinant function with number of iteration
equals to 0 *)
let det (l : int list) : int =
  rec_det l 0
;;


assert(det [1;2;3;4] = -2);;
assert(det [1;1;1;1;1;1;1;1;1] = 0);;
assert(det [1;2;3;4;5;6;7;8;9] = 0);;
assert(det [2;2;2;3;3;3;4;4;4] = 0);;
assert(det [3;2;1;1;2;3;0;1;0] = -8);;
assert(det [0;1;1;1;1;2;2;1;1;] = 2);;
assert(det [0;1;0;1;1;1;2;0;2;1;1;0;0;0;1;0] = 1);;
assert(det [1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16] = 0);;