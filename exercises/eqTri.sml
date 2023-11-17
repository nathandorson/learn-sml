datatype shape = Point of real * real
| Line of (real * real) * (real * real)
| Triangle of (real * real) * (real * real) * (real * real)


fun showTriCood [] = []
| showTriCood(Triangle(a,b,c)::ps) = (a,b,c)::showTriCood(ps)
| showTriCood(p::ps) = showTriCood(ps)

val shapes = [Line((2.2,3.5),(4.1,5.0)), Point(4.5,2.0), Triangle((21.0, 4.5),(15.5, 21.1),(10.5, 10.2))];
showTriCood(shapes);


fun realEq (a, b) = Real.compare(a, b) = EQUAL;

fun square num: real = num * num;

fun isEq Triangle((a1*a2),(b1*b2),(c1*c2)) = 
  realEq( Math.sqrt( (b1 - a1)^2 + (b2 - a2)^2 ), Math.sqrt( square(c1 - a1) +
  square(c2 - a2) ) ) andalso
  realEq( Math.sqrt( square(b1 - a1) + square(b2 - a2) ), Math.sqrt( (c1 - b1)^2
  + (c2 - b2)^2 ) )


fun existsEqTri [] = []
| existsEqTri(Triangle(a,b,c)::ps) = isEq Triangle(a,b,c) orelse existsEqTri(ps)
| existsEqTri(p::ps) = existsEqTri(ps)

val shapes = [Line((2.2,3.5),(4.1,5.0)), Point(4.5,2.0), Triangle((21.0, 4.5),(15.5, 21.1),(10.5, 10.2))];
existsEqTri(shapes);

(\ TODO \)
