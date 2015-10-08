import graph;
import geometry;
size(6cm,6cm);

real a(int n) {
  return 2**n;
}
for (int i = 0; i < 5; ++i) {
  dot((i,a(i)));
}

label("\fbox{$a_n = 2^n$}", (4,0.05),N);

axes("$x$","$y$",Arrow());
