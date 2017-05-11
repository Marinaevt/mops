function [f] = mops(t, x)

f = [2*x(1)*(-1 + 4*x(2) - x(1)/4);
    1*x(2)*(1 - 0.2*x(1) - x(2)*4)];

end

