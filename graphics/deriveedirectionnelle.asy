settings.render=-1;
// settings.offscreen = true;
settings.outformat = "pdf";
settings.prc = false;
import graph3;
currentprojection=orthographic(10,-5,4);
nmesh = 100; // switch to higher val (e.g. 350) for improved result. Default is 10.

triple operator tuple(explicit pair p, explicit real x) { return (p.x, p.y, x); };
triple operator tuple(explicit pair p, explicit int x) { return (p.x, p.y, x); };
triple operator tuple(explicit int x, explicit pair p) { return (x, p.x, p.y); };
triple operator tuple(explicit real x, explicit pair p) { return (x, p.x, p.y); };

size(15cm);
usepackage("inputenc","utf8");
string licence = "Code emprunté à Bruno Colombel, sous licence CC-by-sa";

//boîte
pair min=(-2.5,-2);
pair max=(2.5,2);

//Definition de la surface
real f(pair z) {
  real r=2pi*(z.x^2+z.y^2);
  if (r!=0) return sin(r)/r;
  else return 1;
}
triple ongraph(real f(pair), pair p) {
  return (triple)(p,f(p));
}
void show_trace_and_tg_vector(real f(pair)=f,pair p,pair v, pair bounds, pen pen=currentpen) {
  real eps=0.1^5;
  // le chemin dans le domaine
  pair gamma(real t) {
    return p+t*v;
  }

  // le vecteur dans le domaine
  draw((p,0.0)--(p+v,0.0),pen,Arrow3);

  // le chemin sur le graphe
  real x(real t) { return gamma(t).x; }
  real y(real t) { return gamma(t).y; }
  real z(real t) { return f(gamma(t)); }
  path3 inter = graph(x,y,z,bounds.x, bounds.y);
  draw(inter,pen);

  // calcul de la dérivée numérique
  real derivative = (f(p + eps*v)-f(p))/eps;

  // montrer la tangente
  path3 tg = ongraph(f,p)--(ongraph(f,p)+(v,derivative));
  draw(tg,pen,Arrow3);
}
surface s=surface(f,min,max,Spline); // influencé par la valeur de nmesh.

//intersection des deux chemins

// Point de départ et direction v
pair pA = (0,-0.5);
pair v=(.3,.3);

// Eléments graphiques
draw(s,lightgray+opacity(0.5));
show_trace_and_tg_vector(f,pA,(v.x,0),2(min.x,max.x),red);
show_trace_and_tg_vector(f,pA,(0,v.y),2(min.x,max.x),green);
show_trace_and_tg_vector(f,pA,v,2(min.x,max.x),blue);
dot(ongraph(f,pA), 3bp+green);
dot((pA,0), 2bp+green);
axes3("$x$", "$y$", "$z$",
      min=(min.x,min.y,0),
      max=(max.x+0.25,max.y+0.25,1.25),
      Arrow3);
