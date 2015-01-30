import graph3;
size(6cm,6cm);

currentprojection = orthographic(4,1,1);

real x(real t) { return t; }
real y(real t) { return t; }
real min = -1, max = 1;


path p = graph(x,y,min,max);
draw(p);
picture vf = vectorfield(new path(real t) {
    real t = interp(min,max,t);
    dot((x(t),y(t)));
    return (0,0)--unit((1,1));
  },p, 3,red+opacity(0.3));
add(vf);

axes("$x$","$y$",Arrow);
