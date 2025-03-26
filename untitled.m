clear
clc

E1 = 127e9;
E2 = 10.45e9;
G12 = 5.11e9;
v12 = 0.33;

theta = (30*pi/180);
m = cos(theta);
n = sin(theta);

S11 = 2.6*10^-11;
S12 = -6.7*10^-12;
S22 = 1.2*10^-10;
S66 = 2.4*10^-10;

Sxs = 2*m^3*n*S11-2*m*n^3*S22-2*m*n*(m^2-n^2)*S12-m*n*(m^2-n^2)*S66;
Sys = 2*m*n^3*S11-2*m^3*n*S22+2*m*n*(m^2-n^2)*S12+m*n*(m^2-n^2)*S66;

k = -Sxs/Sys