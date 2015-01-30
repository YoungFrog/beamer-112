import graph;
import geometry;
size(5cm);
point pA=(0,0);
point pC=(1,0);
real angle=45; // degrees
point pB=expi(radians(angle));
draw(pC--pA--pB);
usepackage("siunitx");
draw("\ang{+" +(string)angle+"}",(arc)arc(circle(pA,.2),0,angle),Arrow);
draw(Label("\ang{-" +(string)angle+"}",LeftSide),(arc)arc(circle(pA,.5),angle,0,CW),Arrow);
