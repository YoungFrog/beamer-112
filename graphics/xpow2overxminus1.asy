// 2D
import graph;
import geometry;
size(8cm);

real x(real t) { return t; }
real y(real t) { return t**2/(t-1); }
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

path p = graph(x,y,-5,0.7);
draw(p);
path p = graph(x,y,1.3,5);
draw(p);
draw(line(1,0,-1),dashed);
draw(line(1,-1,1),dashed);

xaxis("$x$",RightTicks(NoZero));
yaxis("$y$",LeftTicks(NoZero));
