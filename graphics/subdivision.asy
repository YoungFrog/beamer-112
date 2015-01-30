// 2D
import graph;
import geometry;
size(8cm);

real x(real t) { return t; }
real y(real t) { return t^2; }
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


draw((-1,0)--(1,0));
real[] table = { -1, -0.7, -0.3, -0.1, 0.1, 0.4, 0.5, 0.8, 1};
for (int i = 0; i < table.length; ++i) {
  draw(format("$x_%d$",i),(table[i],-0.05)--(table[i],0.05),N);
}


// xaxis("$x$",RightTicks(NoZero));
// yaxis("$y$",LeftTicks(NoZero));
// // 
