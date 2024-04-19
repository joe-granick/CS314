let abs n =
  if n < 0 then -n else n

let absMax x y =
  if abs x > abs y then abs x else abs y

let rec fold_left f acc l = match l with
  | [] -> acc
  | h:: t -> fold_left f (f acc h) t

let maxAbsoluteVal l =
  fold_left absMax 0 l

let getnthdigit x n =
  if x < 0 then int_of_char (string_of_int (-x)).[n-1] - int_of_char '0'
  else int_of_char (string_of_int x).[n-1] - int_of_char '0'


let rec accum acc = function
  | [] -> []
  | h :: t -> let ps = acc + h in ps :: accum ps t

let psum l =
  accum 0 l

