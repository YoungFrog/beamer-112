import graph;
import geometry;
size(6cm,6cm);

draw(unitcircle);
void drawrootofunity(int n) {
  pair point = expi(2*pi/n);
  for (int i = 0; i < n; ++i) {
    draw(point^i,2bp+red);
    pair dir = point^i;
    if (dir.y < epsilon) {
      dir = unit(dir + I*dir.x);
    }
    label(format("$w_{%d}$",i), point^i, unit(dir), UnFill);
  }  
  axes("$x$","$y$");
  label(format("\fbox{$w_k^{%d} = 1$}",n),(0,0),UnFill);
}
drawrootofunity(14);

addMargins(5mm,5mm);
