import graph;
usepackage("amsmath");
usepackage("amsfonts");
usepackage("fontenc","T1");
size(10cm);

real f1(real x) { return 1; }
real f2(real x) { return x^2; }
real f3(real x) { if (x < 0) { return 0; } else { return x^3; }; }
real f4(real x) { return abs(x); }
real f5(real x) { return exp(x); }
void showpoint(real f(real x), real a) {
  draw((a,0) -- (a,f(a)) -- (0,f(a)),dashed);
}
void showpoint(real x(real t), real y(real t), real t) {
  draw((x(t),0)--(x(t),y(t))--(0,y(t)),dashed);
  dot((x(t),y(t)));
}
draw(graph(f1,-2,2), red, "$1$");
draw(graph(f2,-2,2), green, "$x^2$");
draw(graph(f3,-2,2), blue, "$0$ si $x < 0$, et $x^3$ sinon.");
draw(graph(f4,-2,2), purple, "$|x|$");
draw(graph(f5,-2,2), grey, "$e^x$");

xaxis("$x$",xmin=-2,xmax=2,RightTicks(NoZero));
yaxis("$y$",ymax=4.2,LeftTicks(NoZero));

add(legend(linelength=1cm),(0,4.2),N,UnFill);
