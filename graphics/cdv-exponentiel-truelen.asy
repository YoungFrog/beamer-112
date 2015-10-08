import graph;
size(6cm,6cm);

path foo(pair p) { return (0,0)--p; }
add(vectorfield(foo,(-1,-1),(1,1),maxlength=0));
xaxis("$x$",Arrow());
yaxis("$y$",Arrow());
