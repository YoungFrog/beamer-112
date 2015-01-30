// 2D
import graph;
import base_pi;

size(10cm);

// real x(real t) { return t; }
// real y(real t) {
//   if (t == 0) {
//     return 1;
//   }
//   else {
//     return sin(t)/t;
//   };
// }
void showpoint(real f(real x), real a) {
  draw((a,0) -- (a,f(a)) -- (0,f(a)),dashed);
}
void showpoint(real x(real t), real y(real t), real t) {
  draw((x(t),0)--(x(t),y(t))--(0,y(t)),dashed);
  dot((x(t),y(t)));
}

string labelfrac(real x) {
  return texfrac(rational(x/pi),factor="\pi",zero=false);
}
path p = graph(sin,-3pi,3pi);
draw(p);
draw(graph(sin,-pi,pi), red);

xaxis("$x$",Ticks(labelfrac,new real[]{-pi,-2pi,2pi,pi}),Arrow);
yaxis("$y$",ymin=-2, ymax=2,LeftTicks(new real[]{1,-1}),Arrow);

