import geometry;
size(7cm);
real angle1=pi/7; // radians
real angle2=pi/4; // radians

point pA=(0,0);
point pC=(5,0);
line ligne1 = line(0,pA);
line ligne2 = line(degrees(angle1),pA);
line ligne3 = line(degrees(pi - angle2),pC);
triangle T = triangle(ligne1,ligne2,ligne3);
point pB = T.point(3); // pouvait être 1, 2 ou 3, et c'était 3.
draw(T);
dot("B",pB,N);
dot("A",pA,SW);
dot("C",pC,SE);

draw("$\hat A$",arc(circle(pA,1),degrees(pC-pA),degrees(pB-pA)));
draw("$\hat B$",arc(circle(pB,.4),degrees(pA-pB),degrees(pC-pB)));
draw("$\hat C$",arc(circle(pC,.5),degrees(pB-pC),degrees(pA-pC)));

addMargins(1cm,1cm);
