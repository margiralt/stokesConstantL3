function output = g(U,W,X,Y)

%output =1 - ((4*(X + Y))/(9*U) - (8*W)/(9*U^(2/3)) + 16/(27*U^(4/3)))/(6*U^(2/3)*(16/(81*U^2) - (16*W)/(27*U^(4/3)) + (4*W^2)/(9*U^(2/3)) + (8*X + 8*Y)/(27*U^(5/3)) + (X*4i - Y*4i)/(3*U^(2/3)) - (X^2 + Y^2)/(3*U^(4/3)) - (4*W*(X + Y))/(9*U) + (10*X*Y)/(9*U^(4/3)) + 1)^(3/2)) - (3*U^(2/3)*W)/2;

output =1 + ((4*(X + Y))/(9*U) + (8*W)/(9*U^(2/3)) - 16/(27*U^(4/3)))/(6*U^(2/3)*(16/(81*U^2) - (16*W)/(27*U^(4/3)) + (4*W^2)/(9*U^(2/3)) - (8*X + 8*Y)/(27*U^(5/3)) - (X*4i - Y*4i)/(3*U^(2/3)) - (X^2 + Y^2)/(3*U^(4/3)) + (4*W*(X + Y))/(9*U) + (10*X*Y)/(9*U^(4/3)) + 1)^(3/2)) - (3*U^(2/3)*W)/2;

end
