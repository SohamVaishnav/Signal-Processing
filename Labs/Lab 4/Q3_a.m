theta = input("theta = ");
r = input("r = ");

b = [1, -2*cos(theta), 1];
a = [1, -2*r*cos(theta), r^2];

figure;
zplane(b, a);

