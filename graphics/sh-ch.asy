typedef real func (real);
func operator - (func f) {
  return new real(real x) { return - f(x); };
}
func operator / (func f, real t) {
  return new real(real x) { return f(x)/t; };
}
func hat (func f) {
  return new real(real x) { return f(-x); };
}

import geometry;
import graph;
usepackage("amsmath");

real xmin = -3;  real xmax = 3;
real ymin = -5;  real ymax = 5;
real epsmargin = 0.5;

size(8cm);

draw(graph(sinh,xmin,xmax),red);
draw(graph(cosh,xmin,xmax),blue);
draw(graph(exp/2,xmin,xmax));
// draw(graph(hat(exp)/2,xmin,xmax));
xlimits(xmin-epsmargin,xmax+epsmargin,Crop);
ylimits(ymin,ymax,Crop);

xaxis("$x$",LeftTicks(NoZero),xmin=xmin,xmax=xmax);
yaxis("$y$",LeftTicks(NoZero),ymin=ymin,ymax=ymax);
label("$\operatorname{sh}(x)$",(-2,sinh(-2)),W, red);
label("$\operatorname{ch}(x)$",(-2,cosh(-2)),W, blue);
label("$\textup{e}^x/2$",(-2,exp(-2)/2),N);
