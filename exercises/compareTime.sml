fun minuteBefore(m1 : int, m2) = m1 < m2;
fun hourMinuteBefore((h1, m1), (h2, m2)) = if h1 < h2 then true else
    if h1 > h2 then false else minuteBefore(m1, m2);

fun timeBefore((h1, m1, "PM"), (h2, m2, "AM")) = false
  | timeBefore((h1, m1, "AM"), (h2, m2, "PM")) = true
  | timeBefore((h1, m1, "AM"), (h2, m2, "AM")) = hourMinuteBefore((h1, m1), (h2, m2))
  | timeBefore((h1, m1, "PM"), (h2, m2, "PM")) = hourMinuteBefore((h1, m1), (h2, m2))
  | timeBefore((_, _, _), (_, _, _)) = false;

timeBefore((1, 59, "AM"), (2, 40, "PM")) = true;
timeBefore((1, 59, "PM"), (2, 40, "PM")) = true;
timeBefore((1, 59, "PM"), (2, 40, "AM")) = false;
timeBefore((1, 59, "AM"), (2, 40, "AM")) = true;
