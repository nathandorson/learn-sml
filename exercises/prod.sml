(* Make tail recursive *)
fun prod [] = 1
| prod (n::ns) = n * (prod ns);

prod([2,3,4,5]) = 120;
prod([]) = 1;

fun prodtr (p, []) = p
  | prodtr (p, n::ns) = prodtr(p * n, ns);

fun prod l = prodtr(1, l);

prod([2,3,4,5]) = 120;
prod([]) = 1;
