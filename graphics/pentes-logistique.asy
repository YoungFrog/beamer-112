import graph;
import contour;
size(6cm,6cm);

real pente(real x, real y) { return y*(1-y/1); }
path foo(pair p) { return (0,0)--(1,pente(p.x,p.y)); }
add(vectorfield(foo,(-1,-0.1),(1,1.2),arrow=None));

// draw(contour(F,(-2,-2),(4,4),new real[] {0.1, 0.2, 0.3,0.5,0.7,1,1.5}));

xaxis("$x$",Arrow());
yaxis("$y$",Arrow());
