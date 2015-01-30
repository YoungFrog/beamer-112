import graph;
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

path p = graph(x,y,-2,2);
draw(p,Arrow);
showpoint(x,y,1.5);
showpoint(x,y,-1.5);

xaxis("$x$",Ticks(NoZero));
yaxis("$y$",Ticks(NoZero));
