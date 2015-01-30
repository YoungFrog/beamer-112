import geometry;
import graph;

real f(real x) {
  return cbrt(x);
};
real xmin = -5;  real xmax = 5;
real ymin = 10;  real ymax = -10;
real epsmargin = 0.5;

size(7cm,5cm,IgnoreAspect);

draw(graph(f,xmin,xmax));
xlimits(xmin-epsmargin,xmax+epsmargin,Crop);
ylimits(ymin,ymax,Crop);

xaxis("$x$",LeftTicks(NoZero));
yaxis("$y$",LeftTicks(NoZero));
