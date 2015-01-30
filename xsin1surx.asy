import graph;
size(10cm);

real x(real t) { return t; }
real y(real t) { return t*sin(1/t); }
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

path p = graph(x,y,0.01,2,n=400);
draw(p,blue);

path p = graph(x,y,-2,-0.01,n=400);
draw(p,blue);


xaxis("$x$",RightTicks(NoZero));
yaxis("$y$",LeftTicks(new real[]{-1,1}));
