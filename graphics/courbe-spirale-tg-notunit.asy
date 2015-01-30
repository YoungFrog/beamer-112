import graph;
size(6cm,6cm);

real x(real t) { return t^2*cos(t); }
real y(real t) { return t^2*sin(t); }
real min = -1, max = 1;


path p = graph(x,y,min,max);
draw(p);
for (int i = -5;)
// picture vf = vectorfield(new path(real t) {
//     return (0,0)--dir(p,reltime(p,t));
//   },p, 10,red+opacity(0.3));
// add(vf);

axes("$x$","$y$",Arrow);
