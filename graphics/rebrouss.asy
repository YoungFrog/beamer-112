import graph;
size(6cm,6cm);


real x(real t) { return t^2; }
real y(real t) { return t^3; }

path p = graph(x,y,-1,1);
draw(Label("$\gamma$",Relative(.75)),p,Arrow);
axes("$x$","$y$");
