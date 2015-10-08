import geometry;
import graph;

real x0 = 0.2;
real f(real x) {
  return 4*x*(1-x);
};
real xmin = -.2;  real xmax = 1.2;
real ymin = 10;  real ymax = -1;
real epsmargin = 0.5;

size(7cm,5cm,IgnoreAspect);

draw(graph(f,xmin,xmax));
draw(line((0,0),(1,1)));

real stateandnext(real x) {
  // draw a state, and show the next state.
  // return the next state;
  real y = f(x);
  dot((x,0));
  draw((x,0)--(x,y)--(y,y),dashed);
  dot((x,y));
  // dot((y,0));
  return y;
}
void states(real x0, int n=1) {
   // show state x0) and the next n states.
   while (n > 0) {
      x0 = stateandnext(x0);
      --n;
   }
}

states(x0,1);
// draw((a1,f(a1)));


xlimits(xmin-epsmargin,xmax+epsmargin,Crop);
ylimits(ymin,ymax,Crop);

xaxis("$x$",LeftTicks(NoZero));
yaxis("$f(x)$",LeftTicks(NoZero));
