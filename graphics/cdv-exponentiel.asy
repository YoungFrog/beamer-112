import graph;
size(6cm,6cm);

path foo(pair p) { return (0,0)--p; }
add(vectorfield(foo,(-1,-1),(1,1)));
xaxis("$x$",Arrow());
yaxis("$y$",Arrow());
