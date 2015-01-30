import geometry;
import graph;
size(7cm);

real theta = 2.2;

point orig=(0,0);
point pP = defaultcoordsys.polar(1,theta);
point Px = (pP.x,0);
point Py = (0,pP.y);

circle trigcircle=circle(orig,1);
draw(arc(trigcircle,degrees(theta),360),thin());
draw("$\theta$",arc(trigcircle,0,degrees(theta)),red,MidArrow);
xaxis("$x$",thin(),Arrow(arrowsize())); yaxis("$y$",thin(),Arrow(arrowsize())); 
draw(pP--orig,thin());
draw(Px--pP--Py,dashed); // projections
dot(orig);
dot("$P$",pP,NW);
dot("$(1,0)$",(1,0),S);
dot("$(\cos(\theta),0)$",Px,S);
dot(Label("$(0,\sin(\theta))$",UnFill),Py,S);

addMargins(1cm,1cm);
