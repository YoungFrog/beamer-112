import graph;
import geometry;
size(6cm,6cm);

real a(int n) {
  if (n % 2 == 0) { return 1; }
  else { return -1; };
}
for (int i = 0; i < 5; ++i) {
  dot((i,a(i)));
}

label("\fbox{$a_n = (-1)^n$}", (4,0.05),N);

xaxis("$x$",Arrow());
yaxis("$y$",Arrow(),ymax=1.5);
