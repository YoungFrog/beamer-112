import graph;
import geometry;
size(8cm);

real X(real t) { return cos(t); }
real Y(real t) { return sin(t); }

pair firstcircle(real t) {
  return 0.5*(X(t),Y(t));
}
pair othercircle(real t) {
  return cos(t)*(X(t),Y(t));
}

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

triple operator tuple(explicit pair p, explicit real x) { return (p.x, p.y, x); };
triple operator tuple(explicit pair p, explicit int x) { return (p.x, p.y, x); };
triple operator tuple(explicit int x, explicit pair p) { return (x, p.x, p.y); };
triple operator tuple(explicit real x, explicit pair p) { return (x, p.x, p.y); };

path p = scale(0.5)*unitcircle;
path q = shift(0.5,0)*scale(0.5)*unitcircle;
draw(p);draw(q);
// showpoint(x,y,1.5);

for (real x : new real[]{ 0.1, 0.3, 0.6, 0.7, 0.9 }) {
  draw((0,0)--0.5*(cos(x),sin(x)), red);
  draw((0,0)--0.5*(cos(x),sin(-x)), red);
}
for (real x : new real[]{ pi/3, pi/3+0.1, pi/3+0.2 }) {
  draw((0,0)--cos(x)*(cos(x),sin(x)),green);
  draw((0,0)--cos(x)*(cos(x),sin(-x)),purple);
}


draw(graph(firstcircle,-pi/3,pi/3),red);
draw(graph(othercircle,pi/3,pi/2),green);
draw(graph(othercircle,-pi/2,-pi/3),purple);


xaxis("$x$",RightTicks(NoZero));
yaxis("$y$",LeftTicks(NoZero));
