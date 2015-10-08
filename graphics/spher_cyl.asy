import graph3;
size(6cm,6cm);

currentprojection = orthographic(1,-1,1);

// coordonnées du point $p$
real x = 1;
real y = 2;
real z = 3;

// variables internes
triple orig = (0,0,0);
triple p = (x,y,z); // le point à projeter.
triple pnorm = p/length(p);
triple proj = (p.x,p.y,0);
triple projnorm = (proj/length(proj));
triple vertproj = (0,0,p.z);

// FIXME: due to a bug, I can't use \point p here as I would do it with a usual 2D-placement.
dot("$\mathbf p$",p); dot(orig);
draw(p--proj,dashed); // proj verticale

draw("$\theta$",(1,0,0){(0,1,0)}..projnorm,Arrow3); // angle
draw(orig--proj,dashed); // dans le plan.
label("$z$",vertproj/2);

draw("$\rho$",vertproj..p,dashed); // proj horizontale

axes3("$x$","$y$","$z$",Arrow3,min=(-1,-1,-1),max=(6,6,6));

// // short for
// yaxis3("$y$");
// zaxis3("$z$");
// xaxis3("$x$");
// // with adapted options.
