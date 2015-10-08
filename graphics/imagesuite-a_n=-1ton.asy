import graph;
import geometry;
size(6cm,6cm);

real a(int n) {
  if (n % 2 == 0) { return 1; }
  else { return -1; };
}
for (int i = 0; i < 2; ++i) {
  dot((a(i),0));
  label(format("$%f$", a(i)), (a(i),-0.05),S);
}

label("\fbox{$a_n = (-1)^n$}", (0,0.05),N);
string ignorelabel(real r) { return ""; }
xaxis("$x$",NoTicks,Arrow(),xmin=-3,xmax=3);
