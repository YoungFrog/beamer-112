import graph;
import geometry;
size(8cm);

real x(real t) { return cos(t); }
real y(real t) { return t; }
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

path p = graph(x,y,-2pi,2pi);
draw(p);
// showpoint(x,y,1.5);

xaxis("$x$",RightTicks(NoZero));
yaxis("$y$",
      LeftTicks(Ticks=new real[] {0, pi, 2pi, -2pi, -pi},
                ticklabel=new string (real t) {
                  return "";//format("$%d\pi$",floor(t/pi));
                }));
