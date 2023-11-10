fun fib(0) = 0
| fib(1) = 1
| fib(n) = fib(n-2) + fib(n-1);

fib(10) = 55;
fib(8) = 21;
fib(2) = 1;

fun fibTailRecursive(0, a, b) = a
  | fibTailRecursive(1, a, b) = b
  | fibTailRecursive(n, a, b) = fibTailRecursive(n - 1, b, a + b);

fun fib(n) = fibTailRecursive(n, 0, 1);

fib(80) = 23416728348467685;
fib(10) = 55;
fib(8) = 21;
fib(2) = 1;
