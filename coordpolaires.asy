import geometry;
size(6cm);


// repère polaire
point orig=(0,0);
real monangle=0; // en radians

// point
point monpoint=(3,2);

dot(orig);
dot(monpoint);
label("$P$",monpoint,E);
draw(line(orig,false,expi(monangle)));
arc myarc=arc(circle(orig,length(monpoint)),degrees(monangle),degrees(monpoint));
draw("$\theta$",myarc,Arrow);
distance("$r$",orig,monpoint,0,Arrows(Fill));
// real polarangle = myarc.angle2 - myarc.angle1 > 0 ? myarc.angle2 - myarc.angle1 : myarc.angle2 - myarc.angle1 + 360;
addMargins(1cm,1cm);
