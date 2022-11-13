function[f_x] = function_fX(x,D,Re,s)
 f_x = (1/sqrt(x)) - 1.14 + 2*log10((s/D) + (9.35/(Re*sqrt(x))));
 end

