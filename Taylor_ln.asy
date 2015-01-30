import graph;
import geometry;
size(8cm);

real x(real t) { return t; }
real y(real t) { return log(t); }
typedef real func (real);
func T(int k) {
  return new real(real t) {
    // return (-1)^(k-1)*factorial(k-1)*(t)^(-k);
    real result = 0;
    for (int l=1; l < k+1; ++l) {
      result += (-1)^(l+1)*(t-1)^l/l;
    };
    return result;
  };
}
real xmin = .1;
real xmax = 3;
draw(legend="$\ln$",graph(log,xmin,xmax));
draw(legend="$T_1$",graph(T(1),xmin,xmax),darkgreen);
draw(legend="$T_2$",graph(T(2),xmin,xmax),red);
draw(legend="$T_3$",graph(T(3),xmin,xmax),blue);

xaxis("$x$",RightTicks(NoZero));
yaxis("$y$",LeftTicks(NoZero));
legendlinelength/=2;
add(legend(2),truepoint(N+W),-N,UnFill);// -N is to move down slightly.
