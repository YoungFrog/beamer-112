import graph3;
size(6cm,6cm);

currentprojection = orthographic(4,1,1);

real x(real t) { return cos(t); }
real y(real t) { return sin(t); }

path p = graph(x,y,-pi,pi/2);
draw(p);

axes("$x$","$y$",Arrow);
