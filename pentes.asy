import graph;
size(6cm,6cm);

real x(real t) { return t; }
real y1(real t) { return 1 + 2t; }
real y2(real t) { return 1/2*t; }
real y3(real t) { return -2*t; }


void showpoint(real f(real x), real a) {
  draw((a,0) -- (a,f(a)) -- (0,f(a)),dotted);
}
void showpoint(real x(real t), real y(real t), real t) {
  draw((x(t),0)--(x(t),y(t))--(0,y(t)),dotted);
  dot((x(t),y(t)));
}

path p = graph(x,y1,-2,3);draw(Label("Pente = 2",EndPoint,SE),p,red);
path p = graph(x,y2,-2,4);draw(Label("Pente = 0.5",EndPoint),p,darkgreen);
path p = graph(x,y3,-2,3);draw(Label("Pente = -2",EndPoint,NE),p,blue);
showpoint(x,y1,1);
showpoint(x,y2,2);
showpoint(x,y3,1);
xaxis("$x$",RightTicks(NoZero));
yaxis("$y$",LeftTicks(NoZero));
