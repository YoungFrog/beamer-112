import graph;
size(5cm);

real x(real t) { return t; }
real y(real t) { return t^2; }
void showpoint(real f(real x), real a) {
  draw((a,0) -- (a,f(a)) -- (0,f(a)),dashed);
}
void showpoint(real x(real t), real y(real t), real t) {
  draw((x(t),0)--(x(t),y(t))--(0,y(t)),dashed);
  dot((x(t),y(t)));
}

pen p = linewidth(1.2bp);
draw((-1,-1)--(0,-1),blue+p);
draw((0,1)--(1,1),blue+p);
dot((0,-1),p,UnFill);
dot((0,1),p,UnFill);

xaxis("$x$",RightTicks(new real [] {-0.5, 0.5}),Arrow);
yaxis("$y$",LeftTicks(new real [] {-0.5, 0.5}));
