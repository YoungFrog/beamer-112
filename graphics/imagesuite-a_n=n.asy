import graph;
import geometry;
size(6cm,6cm);

real a(int n) {
  return n;
}
for (int i = 0; i < 5; ++i) {
  dot((a(i),0));
  label(format("$%f$", a(i)), (a(i),-0.05),S);
}

label("\fbox{$a_n = n$}", (4,0.05),N);
string ignorelabel(real r) { return ""; }
xaxis("$x$",NoTicks,Arrow(),xmin=-1,xmax=10);
