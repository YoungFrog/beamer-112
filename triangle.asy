import graph;
size(5cm);

path p = (0,0)--(1,1)--(1,0)--cycle;
filldraw(p,lightgrey);
dot("(x,y)",(0.2,0.1));
dot("(u,v)",(0.9,0.5),N);

xaxis("$x$",RightTicks(NoZero));
yaxis("$y$",LeftTicks(NoZero));
