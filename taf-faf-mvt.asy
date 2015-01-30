import graph;import geometry;
size(4cm);

real x(real t) { return t; }
real y(real t) { return exp(t); }
real a= -2, b = 1;
void showpoint(real f(real x), real a) {
  draw((a,0) -- (a,f(a)) -- (0,f(a)),dashed);
}
void showpoint(real x(real t), real y(real t), real t) {
  draw((x(t),0)--(x(t),y(t))--(0,y(t)),dashed);
  dot((x(t),y(t)));
}
typedef real func (real);
func operator - (func f) {
  return new real(real x) { return - f(x); };
}

path p = graph(x,y,a,b);
draw(p);

// calcule la direction de la droite joignant les extrémités
pair direction = (x(b),y(b)) - (x(a),y(a));
draw((x(a),y(a))--(x(a),y(a))+direction,blue);

// trouve un point (pointc) corresopndant à la formule des
// accroissements finis (= mean value theorem)
pair pointc = point(p,dirtime(p, direction));
dot(pointc);
draw(line(pointc,pointc+direction),red);

xaxis("$x$",RightTicks(NoZero));
yaxis("$y$",LeftTicks(NoZero));
