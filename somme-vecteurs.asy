import graph3;
size(6cm,6cm);
pair p = (1,2);
pair q = (2,0);
pair O = 0;
draw(O--p,Arrow(arrowhead=TeXHead));
label("$\vec p$",p,W);
draw(O--1.5p,Arrow(arrowhead=TeXHead));
label("$\frac32 \vec p$",1.5p,W);
draw(O--q,Arrow(arrowhead=TeXHead));
label("$\vec q$",q,S);
draw(O--(p+q),dotted);
label("$\vec p+\vec q$",p+q,NE);

draw(p--(p+q),dashed);
draw(q--(p+q),dashed);
axes("$x$","$y$",Arrow);
