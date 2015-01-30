import graph3;
currentprojection=orthographic(10,-5,4);
nmesh = 50; // switch to higher val (e.g. 350) for improved result. Default is 10.
settings.render=4;
settings.offscreen = true;
settings.outformat = "pdf";

size(12cm,0);
// usepackage("inputenc","utf8");
// string licence = "Code emprunté à Bruno Colombel, sous licence CC-by-sa";

//boîte
pair min=(-1,-1);
pair max=(1,1);
bool cond(pair z) {
  return z.x^2 + z.y^2 < 1;
}

//Definition de la surface
real f(pair z) {
  return z.x^2+z.y^2;
}
surface s=surface(f,min,max,Spline,cond); // influencé par la valeur de nmesh.


//Intersection avec y=cy
real cy=0;
real x1(real t) {return t;}
real y1(real t) {return cy;}
real z1(real t) {pair z=(x1(t),y1(t)); return f(z);}
path3 inter1=graph(x1,y1,z1,min.x,max.x);

//Intersection avec x=cx
real cx=0;
real x2(real t) {return cx;}
real y2(real t) {return t;}
real z2(real t) {pair z=(cx,t); return f(z);}
path3 inter2=graph(x2,y2,z2,min.y,max.y);

//intersection des deux chemins
triple inter=(cx,cy,f((pair)(cx,cy)));

// //Derivées partielles numériques.
// real dx=0.1^15, dy=dx;

// //Tangente dans la direction (Ox)
// pair interplusdx=(inter.x+dx,inter.y);
// pair interx=(inter.x,inter.y);
// real partialx=(f(interplusdx)-f(interx))/dx;
// path3 tgx=inter--(inter.x+1,inter.y,inter.z+partialx);

// //Tangente dans la direction (Oy)
// pair interplusdy=(inter.x,inter.y+dy);
// pair intery=(inter.x,inter.y);
// real partialy=(f(interplusdy)-f(intery))/dy;
// path3 tgy=inter--(inter.x,inter.y+1/3,inter.z+partialy/3);

// Eléments graphiques
draw(s,lightgray+opacity(0.5));
draw(inter1,blue);
draw(inter2,red);
axes3("$x$", "$y$", "$z$",
      min=(min.x,min.y,0),
      max=(max.x+0.25,max.y+0.25,1.25),
      Arrow3);
// draw(tgx,green,Arrow3);
// draw(tgy,green,Arrow3);
//write(invert((currentpicture.min().x,currentpicture.max().y)));

// triple min = min3(currentpicture);
// triple max = max3(currentpicture);
// // write(currentpicture.bounds3.min.x)
// ;

// write(min);
// write(max);
// dot(min);
// dot(max);
// //label(scale(.7)*licence,(max.x,min.y),NW);

