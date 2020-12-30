clc
clear

C = [5  3 2;
     1  0  1;
     8  9  -7];
 
X = [0; 5; -3];
 
for(i = 1:length(C))
    Z = C;
    Z(1:end,i) = X;
    veri(i) = det(Z)/det(C);
end
veri