import graph;
import geometry;
size(6cm,6cm);

real x(real t) { return t; }
real y(real t) { return t^2; }
void showpoint(real f(real x), real a) {
  draw((a,0) -- (a,f(a)) -- (0,f(a)),dashed);
}
void showpoint(real x(real t), real y(real t), real t) {
  draw((x(t),0)--(x(t),y(t))--(0,y(t)),dashed);
  dot((x(t),y(t)));
}

guide verticalline(real x) {
  return (x,-1)..(x,1);
};
real[] places = { 0, 0.5, 1 };
for (real p : places) { draw(verticalline(p),linewidth(2pt)); };

yaxis("$y$",NoTicks);
xaxis("$x$",xmax=1.3,Ticks(Label(Relative(S+E))));
