import geometry;
import graph;
usepackage("amsmath");


real f(real x) {
  if (x <= 1)
    return x;
  else
    return x-1;
};
real xmin = -0;
real xmax = 3;
real ymin = 10;
real ymax = -10;
real epsmargin = 0.5;


size(7cm,5cm);


draw(graph(f,0,1));
draw(graph(f,2,3));
dot((3,f(3)),UnFill);
dot((2,f(2)),Fill);
dot((1,f(1)),UnFill);
dot((0,f(0)),Fill);
xlimits(xmin-epsmargin,xmax+epsmargin,Crop);
ylimits(ymin,ymax,Crop);
label("\boxed{y = f(x)}", (1.5,2));


xaxis("$x$",LeftTicks(NoZero));
yaxis("$y$",LeftTicks(NoZero));

