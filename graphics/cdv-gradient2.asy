import graph;
import contour;
size(6cm,6cm);

real F(real x, real y) { return x^2 + cos(y) ; }
path foo(pair p) { return (0,0)--(2 p.x,- sin(p.y)); }
add(vectorfield(foo,(-1,-2),(1,2)));

draw(contour(F,(-2,-2),(2,2),new real[] {0.1, 0.2, 0.3,0.5,0.7,1,1.5}));

xaxis("$x$",Arrow());
yaxis("$y$",Arrow());
