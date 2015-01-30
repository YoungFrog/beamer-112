import geometry;
import graph;
size(7cm);
texpreamble("\renewcommand{\vec}[1]{\mathbf{#1}}");

real theta = .4;
real varphi = .6;

point orig=(0,0);
point pP = defaultcoordsys.polar(1,theta);
point pQ = defaultcoordsys.polar(1,theta+varphi);
point pR = defaultcoordsys.polar(1,theta+pi/2);
point Px = (pP.x,0);
point Py = (0,pP.y);
point Qx = (pQ.x,0);
point Qy = (0,pQ.y);

xaxis(Arrow(arrowsize())); yaxis(Arrow(arrowsize())); 

circle trigcircle=circle(orig,1);
//draw(trigcircle,thin());
draw("$\theta$",arc(trigcircle,0,degrees(theta)),darkgreen,MidArrow);

//circle othercircle=circle(orig,1.4);
draw("$\varphi$",arc(trigcircle,degrees(theta),degrees(theta+varphi)),red,MidArrow);
draw(arc(trigcircle,degrees(theta+varphi),degrees(theta+pi/2)));

circle thirdcircle=circle(orig,0.3);
draw("$\theta + \pi/2$",arc(thirdcircle,0,degrees(theta+pi/2)),MidArrow);


draw((cos(varphi)*pP)--pQ--(sin(varphi)*pR),dashed); // projections
draw(pP--orig,thin());
draw(pR--orig,thin());
dot(orig);
dot("$\vec p$",pP,NE);
dot("$\vec q$",pQ,NE);
dot("$\vec r$",pR,NW);
dot("$\vec a$",(1,0),SE);
dot("$\vec b$",(0,1),SW);

addMargins(.4cm,.4cm);
