let abs n =
  if n < 0 then -n else n

let absMax x y =
  if abs x > abs y then abs x else abs y

let rec fold_left f acc l = match l with
  | [] -> acc
  | h:: t -> fold_left f (f acc h) t

let maxAbsoluteVal l =
  fold_left absMax 0 l;;


print_endline (string_of_int (maxAbsoluteVal [1;2;3;-4]));;