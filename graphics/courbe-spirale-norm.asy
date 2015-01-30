import graph;
size(6cm,6cm);
 
real x(real t) { return t^2*cos(t); }
real y(real t) { return t^2*sin(t); }
real min = -1, max = 1;

path p = graph(x,y,min,max,100);

draw(p);

pair normal(path p,real t) {
  real eps = 1; // next node -- this is ok if there are many of them.
                // Might be wrong otherwise.
  real before = t-eps, after = t+eps;
  if (before <= 0) { before = t; };
  if (after >= length(p)) { after = t; };
  return unit(dir(p,after) - dir(p,before));
}

// vecteurs normaux
picture vf = vectorfield(new path(real t) {
real t = reltime(p,t);
return (0,0)--normal(p,t)/2;
},p, 6,blue+opacity(0.3));
add(vf);
 
// vecteurs tangents
picture vf = vectorfield(new path(real t) {
real t = reltime(p,t);
return (0,0)--dir(p,t)/2;
},p, 6,red+opacity(0.3));
add(vf);

axes("$x$","$y$",Arrow);


// import graph;
// size(6cm,6cm);

// real x(real t) { return t^2*cos(t); }
// real y(real t) { return t^2*sin(t); }
// real min = -1, max = 1;


// path p = graph(x,y,min,max);
// draw(p);
// picture vf = vectorfield(new path(real t) {
//     real t = interp(min,max,t);
//     //    dot((x(t),y(t)));
//     return (0,0)--unit(((t^2*sin(t) - 2*t*cos(t))*((t^2*cos(t) + 4*t*sin(t) - 2*cos(t))*(t^2*sin(t) - 2*t*cos(t)) - (t^2*cos(t) + 2*t*sin(t))*(t^2*sin(t) - 4*t*cos(t) - 2*sin(t)))/(abs(t^2*cos(t) + 2*t*sin(t))^2 + abs(t^2*sin(t) - 2*t*cos(t))^2)^(3/2) - (t^2*cos(t) + 4*t*sin(t) - 2*cos(t))/sqrt(abs(t^2*cos(t) + 2*t*sin(t))^2 + abs(t^2*sin(t) - 2*t*cos(t))^2), -(t^2*cos(t) + 2*t*sin(t))*((t^2*cos(t) + 4*t*sin(t) - 2*cos(t))*(t^2*sin(t) - 2*t*cos(t)) - (t^2*cos(t) + 2*t*sin(t))*(t^2*sin(t) - 4*t*cos(t) - 2*sin(t)))/(abs(t^2*cos(t) + 2*t*sin(t))^2 + abs(t^2*sin(t) - 2*t*cos(t))^2)^(3/2) - (t^2*sin(t) - 4*t*cos(t) - 2*sin(t))/sqrt(abs(t^2*cos(t) + 2*t*sin(t))^2 + abs(t^2*sin(t) - 2*t*cos(t))^2)));
//   },p, 10,red+opacity(0.3));
// add(vf);
// picture vf = vectorfield(new path(real t) {
//     real t = interp(min,max,t);
//     //    dot((x(t),y(t)));
//     return (0,0)--unit((2t*cos(t)-t^2*sin(t),t^2*cos(t)+2t*sin(t)));
//   },p, 10,red+opacity(0.3));
// add(vf);


// axes("$x$","$y$",Arrow);
