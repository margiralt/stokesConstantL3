function output = initialCondition(t, rho, N)

U = t - 1i*rho;

Wc = [4/243;0;-(172/2187);0;(1333976/1594323);0];
Xc = [-1i*(2/9); 28/81;1i*(20/27);-(16424/6561);-1i*(69392/6561);(10061752/177147)];
Yc = conj(Xc);

W=0; X=0; Y=0;
for k=1:N
    W = W + Wc(k)*U^(-(8/3)-(k-1));
    X = X + Xc(k)*U^(-(4/3)-(k-1));
    Y = Y + Yc(k)*U^(-(4/3)-(k-1));
end

output=[W;X;Y];
    
end

