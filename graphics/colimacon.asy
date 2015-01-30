settings.render=-1;
settings.prc=false;
settings.offscreen = true;
settings.outformat = "pdf";
import graph3;
import palette;
size(6cm,6cm);
nmesh=50;

currentprojection = orthographic(3,2,1);

real x(real r, real t) { return r*cos(t); }
real y(real r, real t) { return r*sin(t); }
real z(real r, real t) { return t/5; }
triple f(pair u) { return (x(u.x,u.y),y(u.x,u.y),z(u.x,u.y)); }

surface s = surface(f,(0,0),(1,2*pi),20,Spline);

draw(s,surfacepen=blue+opacity(0.3)// mean(palette(s.map(zpart),Rainbow()))
     ,meshpen=0.7bp+black
     );

xaxis3("$x$",Arrow3);
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
