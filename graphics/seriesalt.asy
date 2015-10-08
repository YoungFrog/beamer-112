import graph;
import geometry;

size(6cm,6cm);
real absf(int i) {
  return 10/2**i;
}
real f(int i) {
  if (i % 2 == 0) {
    return absf(i);
  }
  else {
    return -absf(i);
  }
}

xaxis("$j$");
yaxis("$s_j$");

real last = 2;
for (int i = 1; i<10; ++i) {
  //write(last);
  last += f(i);
  dot((i,last));
}

