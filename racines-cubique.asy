import graph;
size(6cm,6cm);

real x(real t) { return t; }
real y(real t) { return cbrt(t); }
real y2(real t) { return sqrt(t); }
void showpoint(real f(real x), real a) {
  draw((a,0) -- (a,f(a)) -- (0,f(a)),dashed);
}
void showpoint(real x(real t), real y(real t), real t) {
  draw((x(t),0)--(x(t),y(t))--(0,y(t)),dashed);
  dot((x(t),y(t)));
}

path p = graph(x,y,-4,4);
draw(Label("$\sqrt[3]{x}$", Relative(.8), S),p,red);
showpoint(x,y,2.25);
path p = graph(x,y2,0,4);
draw(Label("$\sqrt[2]{x}$", Relative(.6), N),p);

xaxis("$x$",RightTicks(NoZero));
yaxis("$y$",LeftTicks(NoZero));
