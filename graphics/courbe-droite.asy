import graph3;
size(6cm,6cm);

currentprojection = orthographic(4,1,1);

real x(real t) { return t; }
real y(real t) { return t; }

path p = graph(x,y,-1,1);
draw(p);

axes("$x$","$y$",Arrow);
