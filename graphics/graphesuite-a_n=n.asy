import graph;
import geometry;
size(6cm,6cm);

real a(int n) {
  return n;
}
for (int i = 0; i < 10; ++i) {
  dot((i,a(i)));
}

label("\fbox{$a_n = n$}", (4,0.05),N);

axes("$x$","$y$",Arrow());
