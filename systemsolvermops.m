syms a1 a2 b1 b2 k1 k2 m n lam1 lam2
N  = (k2 + b2*k1*k2)/(b1*b2*k1*k2 + 1);
M = (k1*(b1*k2 - 1))/(b1*b2*k1*k2 + 1);
dm = (a1*b1*N - 2*a1*M/k1 - a1)*m + a1*M * n * b1;
dn = a2*b2*N*m + (a2 - 2*a2*N/k2 - a2*b2*M)*n;
A = [-(a1 + (2*a1*(b1*k2 - 1))/(b1*b2*k1*k2 + 1) - (a1*b1*(k2 + b2*k1*k2))/(b1*b2*k1*k2 + 1)) - lam1, (a1*b1*k1*(b1*k2 - 1))/(b1*b2*k1*k2 + 1);
(a2*b2*(k2 + b2*k1*k2))/(b1*b2*k1*k2 + 1), - ((2*a2*(k2 + b2*k1*k2))/(k2*(b1*b2*k1*k2 + 1)) - a2 + (a2*b2*k1*(b1*k2 - 1))/(b1*b2*k1*k2 + 1))-lam2];
kk = det(A);
sol = solve(kk, lam1, lam2);
sol.lam1
sol.lam2