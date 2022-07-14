function output = eqInner(t,Z,rho)

U = t - 1i*rho;
W = Z(1);
X = Z(2);
Y = Z(3);

F1 = (f1(U,W,X,Y))/(g(U,W,X,Y));
F2 = (f2(U,W,X,Y))/(g(U,W,X,Y));
F3 = (f3(U,W,X,Y))/(g(U,W,X,Y));

output = [F1;F2;F3];
end

