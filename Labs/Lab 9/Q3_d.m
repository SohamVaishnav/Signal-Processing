w0 = pi/4;
r0 = 0.99;
b02 = (1 + r0^2 -2*r0*cos(w0))/(2 - 2*cos(w0));
b01 = 1/(2 - 2*cos(w0));

B1 = [b01, -2*b01*cos(w0), b01];
A1 = [1];
N = 2001;

[H1, W1] = freqz(B1, A1, 2001);

B2 = [b02, -2*b02*cos(w0), b02];
A2 = [1, -2*r0*cos(w0), r0^2];

[H2, W2] = freqz(B2, A2, N);

fvtool(B2, A2);
fvtool(B1, A1);