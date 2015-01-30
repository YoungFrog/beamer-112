import geometry;
import math;
unitsize(.6cm);

// label positions must be adapted if changed
pair theorigin=(0,0);
pair vecx=(1,0);
pair vecy=(0,1);
pair lepointP=(6,4);

pair vecxtip=theorigin+vecx;
pair vecytip=theorigin+vecy;
pen lightpen=defaultpen+linewidth(0.1*linewidth());

// basis
dot(theorigin);
dot(vecxtip);
dot(vecytip);
label("$1$",vecxtip,S);
label("$1$",vecytip,W);

// axes
drawline(theorigin,vecxtip,lightpen);
drawline(theorigin,vecytip,lightpen);
label("$P_{x}$", theorigin+6*vecx, SE);
label("$P_{y}$", theorigin+4*vecy, NW);


// point
dot(lepointP);
label("$P$",lepointP,NE);

// adding some space around the picture :
draw(min(currentpicture,true)+(-1,-1)--max(currentpicture,true)+(1,1),invisible);

// projections
pair P1 = projection(theorigin,vecxtip,theorigin,vecytip)*lepointP;
pair P2 = projection(theorigin,vecytip,theorigin,vecxtip)*lepointP;
drawline(lepointP,P1,dashed);
drawline(lepointP,P2,dashed);

dot(P1);
dot(P2);

// adding some space around the picture :
draw(min(currentpicture,true)+(-0.3,0.2)--max(currentpicture,true)+(1,0.2),invisible);
