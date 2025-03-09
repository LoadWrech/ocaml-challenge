let tris ((a : 'a), (b : 'a), (c : 'a), (d : 'a)) : bool = 
  match (a, b, c, d) with
  | (_, v1, v2, v3) when v1 = v2 && v2 = v3-> true
  | (v1, _, v2, v3) when v1 = v2 && v2 = v3-> true
  | (v1, v2, _, v3) when v1 = v2 && v2 = v3-> true
  | (v1, v2, v3, _) when v1 = v2 && v2 = v3-> true
  | _ -> false;;


let hand () =
  let a = 10 in
  (Random.int(a),
  Random.int(a),
  Random.int(a),
  Random.int(a));;