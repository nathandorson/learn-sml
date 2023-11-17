datatype 'a tree = Lf | Br of 'a * 'a tree * 'a tree;

val birnam = Br(1, Br(2, Lf, Br(3,Br(4,Lf,Lf), Lf)), Lf);

fun depth Lf = 0
| depth (Br(v, t1, t2)) = 1 + Int.max(depth t1, depth t2);



fun preorder (Lf, order) = order
| preorder (Br(v, t1, t2), order) = v :: preorder (t1, preorder(t2, order));

fun inorder (Lf, order) = order
| inorder (Br(v, t1, t2), order) = inorder (t1, (v :: inorder (t2, order)));

fun postorder (Lf, order) = order
| postorder (Br(v, t1, t2), order) = postorder (t1, postorder (t2, v :: order));
