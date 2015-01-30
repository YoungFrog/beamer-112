import geometry;
import graph;
usepackage("amsmath");

real f1(real x) { return x; };
real f2(real x) { return x+1; };
real xmin = 0;
real xmax = 2;
real ymin = 10;
real ymax = -10;
real epsmargin = 0.5;


size(7cm,5cm);


draw(graph(f1,0,1));
draw(graph(f2,1,2));
dot((2,f2(2)),UnFill);
dot((1,f2(1)),Fill);
dot((1,f1(1)),UnFill);
dot((0,f1(0)),Fill);
xlimits(xmin-epsmargin,xmax+epsmargin,Crop);
ylimits(ymin,ymax,Crop);
label("\boxed{y = f^{-1}(x)}", (1.2,1.5));


xaxis("$x$",LeftTicks(NoZero));
yaxis("$y$",LeftTicks(NoZero));

