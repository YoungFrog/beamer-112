import graph;
import geometry;
size(8cm);

real x(real t) { return t; }
real y(real t) { return atan(t); }
void showpoint(real f(real x), real a) {
  draw((a,0) -- (a,f(a)) -- (0,f(a)),dashed);
}
void showpoint(real x(real t), real y(real t), real t) {
  draw((x(t),0)--(x(t),y(t))--(0,y(t)),dashed);
  dot((x(t),y(t)));
}
typedef real func (real);
func operator - (func f) {
  return new real(real x) { return - f(x); };
}

path p = graph(x,y,-5,5);
draw(line((point)(0,pi/2),0),dashed);
draw(line((point)(0,-pi/2),0),dashed);
draw(p);

xaxis("$x$",RightTicks(NoZero));
yaxis("$y$",ymin=-pi/2, ymax=pi/2);
