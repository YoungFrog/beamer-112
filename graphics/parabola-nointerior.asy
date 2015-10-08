import graph;
import geometry;
usepackage("amssymb");
size(5cm);

// arrowbar DotsArrow(real size=0.2)
// {
//   return new bool(picture pic, path g, pen p, margin margin) {
//     return true;
//   };
// }

real x(real t) { return t; }
real y(real t) { return t^2; }
pair f(real t) { return (x(t),(y(t))); }

path p = graph(x,y,-1,1);
draw(p);
draw(f(-1.1)--f(-1)^^f(1)--f(1.1),dotted);
axes("$x$","$y$",min=(-infinity,0),above=true,Arrow);
label("$\gamma : \mathbb R \to \mathbb R : t \mapsto (t,t^2)$", (0,0), S, UnFill);
addMargins(5pt,5pt);
