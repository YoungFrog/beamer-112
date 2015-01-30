import graph3;
size(6cm,6cm);

currentprojection = orthographic(4,1,1);

real x(real t) { return t^2*cos(t); }
real y(real t) { return t^2*sin(t); }

path p = graph(x,y,-5*pi,3pi/2);
draw(p,MidArrow);

axes("$x$","$y$",Arrow);
