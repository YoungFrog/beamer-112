import graph;
import geometry;
size(4cm);

// real x(real t) { return cos(t); }
// real y(real t) { return sin(t); }
real f(real t) { return 1+cos(2t);}

//path p = graph(x,y,0,2*pi)..cycle;
path p = polargraph(f,0,2*pi)..cycle;
filldraw(p,palegreen+opacity(0.3));

axes("$x$","$y$",above=true,Arrow);
addMargins(5pt,5pt);
label( "$r(t) = 1+\cos(2t)$", (0,-1.5),UnFill);
