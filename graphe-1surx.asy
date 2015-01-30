import graph;
size(6cm);

real x(real t) { return t; }
real y(real t) { return 1/t; }
void showpoint(real f(real x), real a) {
  draw((a,0) -- (a,f(a)) -- (0,f(a)),dashed);
}
void showpoint(real x(real t), real y(real t), real t) {
  draw((x(t),0)--(x(t),y(t))--(0,y(t)),dashed);
  dot((x(t),y(t)));
}

// this is to allow "- function" to be a function.
typedef real func (real);
func operator - (func f) {
  return new real(real x) { return - f(x); };
}


draw(graph(x,y,-3,-0.3));
draw(graph(-x,-y,-3,-0.3));

xaxis("$x$",RightTicks(NoZero));
yaxis("$y$",LeftTicks(NoZero));
