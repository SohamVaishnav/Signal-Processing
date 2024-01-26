poles = input("No. of poles ");
Z = zeros(poles);
for k = 1:poles
    Z(k) = input("poles value ");
end
[N, ROC, C, S] = p(Z);
disp(N);
disp(ROC);
disp(C);
disp(S);
