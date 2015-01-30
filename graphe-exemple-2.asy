import graph;
size(6cm,6cm);

real x(real t) { return t; }
real y(real t) { return t^4- t^2 + 1; }
void showpoint(real f(real x), real a) {
  draw((a,0) -- (a,f(a)) -- (0,f(a)),dashed);
}
void showpoint(real x(real t), real y(real t), real t) {
  draw((x(t),0)--(x(t),y(t))--(0,y(t)),dashed);
  dot((x(t),y(t)));
}

path p = graph(x,y,-1.3,1.3);
draw(p);

xaxis("$x$",RightTicks(NoZero));
yaxis("$y$",LeftTicks(NoZero));
